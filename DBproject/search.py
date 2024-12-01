from db_connection import connect_to_db

def search_books():
    print("\n책 검색 방법을 선택하세요:")
    print("1. 제목으로 검색")
    print("2. 작가로 검색")
    print("3. 카테고리로 검색")
    print("4. 대출 가능 책 모두 조회")

    choice = input("선택: ")

    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()

    if choice == '1':  # 제목으로 검색
        keyword = input("책 제목을 입력하세요: ")
        query = "SELECT Title, Author, Category, AvailableCopies FROM books WHERE Title LIKE %s"
        cursor.execute(query, ('%' + keyword + '%',))

    elif choice == '2':  # 작가로 검색
        keyword = input("작가 이름을 입력하세요: ")
        query = "SELECT Title, Author, Category, AvailableCopies FROM books WHERE Author LIKE %s"
        cursor.execute(query, ('%' + keyword + '%',))

    elif choice == '3':  # 카테고리로 검색
        keyword = input("카테고리를 입력하세요: ")
        query = "SELECT Title, Author, Category, AvailableCopies FROM books WHERE Category LIKE %s"
        cursor.execute(query, ('%' + keyword + '%',))

    elif choice == '4':
        query = "SELECT Title, Author, Category, AvailableCopies FROM books WHERE AvailableCopies > 0"
        cursor.execute(query)

    else:
        print("잘못된 선택입니다.")
        db.close()
        return

    books = cursor.fetchall()

    if books:
        print("\n검색 결과:")
        for book in books:
            print(f"제목: {book[0]}, 작가: {book[1]}, 카테고리: {book[2]}, 대출 가능 권수: {book[3]}")
    else:
        print("검색 결과가 없습니다.")

    db.close()