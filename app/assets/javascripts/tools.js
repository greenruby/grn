Date.prototype.short_format = function() {
  var months = ['jan','feb','mar','apr','jun','jul','aug','sep','oct','nov','dec'];
  return months[this.getMonth()] + ' ' + this.getDate();
}
