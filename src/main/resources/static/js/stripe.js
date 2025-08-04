const stripe = Stripe('pk_test_51RngmVH6GU8wS5B6Cw0bg6fXPBTjGVYte7smvi9NjdkanuFKxmBnx3eSPqNlG6KCpGadbLl3CL3SjED9JxIrXXRD00eyfFGTGG');
const paymentButton = document.querySelector('#paymentButton');

paymentButton.addEventListener('click', () => {
 stripe.redirectToCheckout({
   sessionId: sessionId
 })
});