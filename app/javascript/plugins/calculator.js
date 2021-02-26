const calculator = () => {
  let startDate = document.getElementById("booking_start_date");
  let endDate = document.getElementById("booking_end_date");
  let bookingDays = document.getElementById("booking_days");
  let price = document.getElementById("subtotal");
  startDate.addEventListener("change", () => {
    let calcStart = new Date(startDate.value);
    let calcEnd = new Date(endDate.value);
    if (calcEnd > calcStart) {
      const ONE_DAY = 1000 * 60 * 60 * 24;
      const differenceMs = Math.abs(calcEnd - calcStart);
      const days = Math.round(differenceMs / ONE_DAY);
      const calculation = days * parseInt(price.getAttribute("data-subtotal"));
      bookingDays.innerHTML = `${days}`;
      price.innerHTML = `${calculation}`;
    }
  });

  endDate.addEventListener("change", () => {
    let calcStart = new Date(startDate.value);
    let calcEnd = new Date(endDate.value);
    if (calcEnd > calcStart) {
      const ONE_DAY = 1000 * 60 * 60 * 24;
      const differenceMs = Math.abs(calcEnd - calcStart);
      const days = Math.round(differenceMs / ONE_DAY);
      const calculation = days * parseInt(price.getAttribute("data-subtotal"));
      bookingDays.innerHTML = `${days}`;
      price.innerHTML = `${calculation}`;
    }
  });
}
export default calculator;
