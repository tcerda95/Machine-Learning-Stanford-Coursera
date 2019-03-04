function F1 = calcF1(yval, predictions)

tp = sum(predictions == 1 & yval == 1);
fp = sum(predictions == 1 & yval == 0);
fn = sum(predictions == 0 & yval == 1);

precision = tp / (tp + fp);
recall = tp / (tp + fn);

F1 = 2 * precision * recall / (precision + recall);

end