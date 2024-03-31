

# StripePayment Feature for Flutter Apps

## Overview
StripePayment is a feature that can be seamlessly integrated into any Flutter app to enable smooth payment processing using Stripe. The feature is designed to focus on performance, error handling, and user experience. It follows the MVVM pattern and utilizes Bloc for state management.

## Key Features

1. ### Nice and Smooth Cart Page:
   - Users can easily view and manage their cart items.
   - Intuitive UI with smooth animations for adding/removing items.
   - Cart total dynamically updates as items are added or removed.

     ![MyCart](https://github.com/A7medMajed16/checkout-payment/assets/86576698/c9791b9b-a17c-4f10-8ad0-2db8770d3dbc)


2. ### Multiple Payment Methods:
   - Users can add and manage multiple payment methods (credit cards, bank accounts, etc.).
   - Securely store payment information for future use.
   - Easily switch between saved payment methods during checkout.

   ![PaymentMethods](https://github.com/A7medMajed16/checkout-payment/assets/86576698/c37408fc-a035-4f3f-a4c4-51591421746f)

     
3. ### Payment Stripe Sheet:
   - A sleek and user-friendly payment sheet powered by Stripe.
   - Users can enter payment details (card number, expiry, CVV) directly.
   - Option to save payment information for future transactions.

   
   ![Stripe](https://github.com/A7medMajed16/checkout-payment/assets/86576698/4163d9ad-6bb8-4707-a017-4a81898d44fd)

   
4. ### Receipt Page:
   - After successful payment, users are presented with a detailed receipt.
   - Receipt includes order summary, payment details, and transaction ID.
   - Clean and professional design.

   
   ![Receipt](https://github.com/A7medMajed16/checkout-payment/assets/86576698/3c0f48b4-89d7-465e-8ef9-ac677c543313)

   
## Technical Details
- ### Architecture:
       MVVM (Model-View-ViewModel)
- ### State Management:
        Bloc
- ### Error Handling:
  - Comprehensive error handling for network issues, invalid inputs, and server errors.
  - User-friendly error messages and fallbacks.
- ### Performance Optimization:
  - Efficient data fetching and caching.
  - Minimized network requests.
  - Optimized animations for a smooth user experience.
- ### Security:
  - Stripe integration follows best practices for secure payment processing.
  - Sensitive data (e.g., card details) encrypted and transmitted securely.
- ### Testing:
  - Unit tests for business logic.
  - Widget tests for UI components.
- ### Documentation:
  - Detailed code comments.
  - README with setup instructions for other developers.

## Why Choose StripePayment?
- Seamless integration: Easily add StripePayment to your existing Flutter app.
- Customizable: Adapt the UI and behavior to match your app's design.
- Reliable: Built with robust error handling and performance in mind.
- Secure: Utilizes Stripe's secure payment processing.

## Showcase
StripePayment has been successfully integrated into several e-commerce and service apps, improving checkout experiences and increasing user satisfaction.

## Used Packages
| **Package Name**       | **Version**    |
|------------------------|----------------|
| cupertino_icons        | ^1.0.6         |
| dartz                  | ^0.10.1        |
| dio                    | ^5.4.1         |
| flutter                | sdk: flutter   |
| flutter_bloc           | ^8.1.4         |
| flutter_launcher_icons | ^0.13.1        |
| flutter_stripe         | ^10.1.1        |
| flutter_svg            | ^2.0.10+1      |
| font_awesome_flutter   | ^10.7.0        |
| go_router              | ^13.2.0        |


## Video

https://github.com/A7medMajed16/checkout-payment/assets/86576698/4c95804e-72b5-4565-8e42-2777488769a6
 
---


