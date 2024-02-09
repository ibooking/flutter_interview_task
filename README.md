# Group class booking

## Objective

Develop a gym class booking app using Flutter for managing gym class bookings. The app will feature a simple login page, a class browsing page, and a page for viewing booked classes. You will need to fetch data from the API described below.

## Requirements

- A login page.
- Two main pages, a page for viewing bookings, and one for browsing classes.
- A button for booking and unbooking a class
- A logout button on the bookings page.
- Don't remove any routes defined in `main.dart` (you can add routes if needed)
- (Bonus) A class detail page

You are free to modify the code and add any dependencies as you see fit.

## Setup

**1. Clone the repository:**
```
git clone git@github.com:ibooking/flutter_interview_task.git
```
**2. Start the API server:**
```
dart bin/server.dart
```

The server will be running on http://localhost:8080.

When started, the server will generate classes for 7 days in the future.

## Delivery
Fork this project, set it private and invite `brason`.

## API Documentation

### Authentication

#### GET /authenticate

- **Description**: Generates and returns a new authentication token.
- **Response**:
  - **200 OK**: Returns a token as a string.
  - **Content-Type**: `application/json`

You need to create a Bearer token to authenticate. Add the following to the `Authorization` header:

```
Bearer {token}
```

### Group Classes

#### GET /groupClasses

- **Description**: Retrieves a list of group classes available on a specific date.
- **Query Parameters**:
  - `date` (required): The date for which to retrieve available classes, in the format `yyyy-MM-dd`.
- **Response**:
  - **200 OK**: Returns a list of classes available on the specified date.
  - **400 Bad Request**: If the `date` query parameter is missing or invalid.
  - **Content-Type**: `application/json`

#### GET /groupClasses/:id

- **Description**: Retrieves details for a specific group class by its ID.
- **URL Parameters**:
  - `id` (required): The ID of the class to retrieve details for.
- **Response**:
  - **200 OK**: Returns details of the specified class.
  - **Content-Type**: `application/json`

### Bookings

#### GET /bookings

- **Description**: Retrieves a list of booked classes for the authenticated user.
- **Response**:
  - **200 OK**: Returns a list of booked classes.
  - **Content-Type**: `application/json`

#### POST /book

- **Description**: Books a class for the authenticated user.
- **Request Body** (application/json):
  - `classId` (required): The ID of the class to book.
- **Response**:
  - **200 OK**: Booking was successful.
  - **404 Not Found**: If the class ID is not found.

#### POST /unbook

- **Description**: Cancels a booking for a class.
- **Request Body** (application/json):
  - `classId` (required): The ID of the class to unbook.
- **Response**:
  - **200 OK**: Unbooking was successful.
  - **404 Not Found**: If the class ID is not found.
