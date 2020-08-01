$(document).on("turbolinks:load", function () {
  $("#checkout-button").on("click", () => {
    $("#checkout-button").html(
      `<span class="spinner-border spinner-border-sm text-light"></span>  Loading...`
    );
  });
});
