# **Tip Calculator Application**

A Ruby on Rails application for calculating tips based on user inputs. This application allows users to input a bill amount, select a tip percentage, and specify the number of people sharing the bill. The application computes the total tip amount, total bill, and per-person amounts. An admin dashboard displays past calculations and includes pagination. The live demo is hosted on render and can be accessed via (https://tip-calculator-in-rubyonrails.onrender.com/)

# Features
1. **Tip Calculator**
   - Users can enter the bill amount, select a predefined tip percentage, or enter a custom percentage.
   - The application calculates Tip amount per person and Total bill per person.
2. **Admin Dashboard**
   - Accessible only to authenticated admins using basic authentication.
   - Displays a list of past calculations with pagination.
3. **Navbar**
   - For easy navigation between calculator and admin dashboard.
4. **Error handling**
   - Errors are displayed above respective fields for invalid inputs (e.g., zero or negative values).
   - Calculation process is haulted if any error is detected.


# Setup Instructions

**Pre-requisites**
- Ruby (version 3.0+)
- Rails (version 8.0)
- SQLite3

**Installation Steps**
1. Clone the repository
   ```
   git clone https://github.com/trevourhaldin01/tip_calculator_in_RubyOnRails.git
   cd tip_calculator_in_RubyOnRails

2. install dependencies
   ```
   bundle install
3. Setup the database
   ```
   rails db:setup

4. Configure Admin Authentication
   Update the credentials for admin authentication in the app/controllers/dashboard_controller.rb file
   ```
   http_basic_authenticate_with name: "admin", password: "admin12345678"

5. Start the server
   ```
   rails server 
6. Access the application
   Open the browser and navigate to
   - Tip Calculator: (http://localhost:3000)
   - Admin Dashboard: (http://localhost:3000/admin/dashboard)
  
# Description of approach

**Core Functionality**
- Predefined tip percentages and a custom tip input provide flexibility for users.
- Calculations are saved to a database for future reference and only accessed with admin priviledges.

**Error Handling**
- Validations ensure that:
   - The number of people is greater than zero.
   - The bill amount and tip percentage are non-negative.
- Custom error messages are displayed directly above the respective fields.

**Admin Dashboard**
- Basic authentication protects the admin dashboard.
- The dashboard lists past calculations with columns for all relevant details, including timestamps.
- Pagination is implemented using the kaminari gem to display 15 records per page.

**Design and Layout**
- The application uses a clean, responsive design with styles extracted into a stylesheet.
- Buttons highlight the active tip percentage selection using CSS.

# Technologies Used
 - Ruby on Rails: Framework for building the application.
 - SQLite: Database for storing tip calculations.
 - HTML & CSS: For structuring and styling the application.
 - Kaminari: Gem for pagination in the admin dashboard.

   
   




