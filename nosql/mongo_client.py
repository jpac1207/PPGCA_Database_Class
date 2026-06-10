
import logging
import sys

import pymongo

logging.basicConfig(level=logging.INFO)


class MongoClient():
    def __init__(self):
        self._client = pymongo.MongoClient(
            "localhost", 27018, username="mongo", password="mongo_pwd")

    def add_documents_to_collection(self, collection_name: str = "national_teams", documents: list[dict] = []):
        database = self._client.get_database("local")
        collection = database.get_collection(collection_name)
        collection.insert_many(documents=documents)

    def retrieve_documents_from_collection(self, collection_name: str = "national_teams", predicate: dict = {}) -> list[dict]:
        database = self._client.get_database("local")
        collection = database.get_collection(collection_name)
        return list(collection.find(predicate))


def main(args: list):
    if len(args) <= 1:
        raise ValueError("No argument provided!")

    VALID_ARGS = ["read_all", "read_south_america", "read_brazil", "write"]
    operation_arg = args[1]

    if (operation_arg.lower() not in VALID_ARGS):
        raise ValueError("Invalid Argument!")

    client = MongoClient()
    documents = []

    if operation_arg.lower() == "write":
        documents = [{"name": "Brazil", "trophy_number": 5, "continent": "South America"},
                     {"name": "Italy", "trophy_number": 4, "continent": "Europe"},
                     {"name": "Germany", "trophy_number": 4, "continent": "Europe"},
                     {"name": "Argentina", "trophy_number": 3,
                         "continent": "South America"},
                     {"name": "France", "trophy_number": 2, "continent": "Europe"}]

        logging.info("Writing documents to the database...")
        client.add_documents_to_collection(
            collection_name="national_teams", documents=documents)
        logging.info("The documents have been written with success!")
        return

    elif operation_arg.lower() == "read_all":
        documents = client.retrieve_documents_from_collection()

    elif operation_arg.lower() == "read_south_america":
        predicate = {"continent": "South America"}
        documents = client.retrieve_documents_from_collection(
            predicate=predicate)

    elif operation_arg.lower() == "read_brazil":
        predicate = {"trophy_number": 5, "continent": "South America"}
        documents = client.retrieve_documents_from_collection(
            predicate=predicate)

    for document in documents:
        logging.info(document)


if __name__ == "__main__":
    main(args=sys.argv)
