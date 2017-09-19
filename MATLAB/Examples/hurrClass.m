function [hurrClassification hurrWarning] = hurrClass(hurrWindSpeed)
if hurrWindSpeed >= 157
    hurrClassification = '5';
    hurrWarning = 'Catastrophic damage'
elseif hurrWindSpeed >= 130
    hurrClassification = '4'
    hurrWarning = 'High damage'
elseif hurrWindSpeed >= 111
    hurrClassification = '3'
    hurrWarning = 'Devastating damage'
else error('Speed invalid')
end