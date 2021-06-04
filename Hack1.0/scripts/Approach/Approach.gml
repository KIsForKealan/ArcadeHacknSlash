/// Approach (currentValue, targetValue, changeAmount)


function Approach(_currentValue, _targetValue, _changeAmount){
	
	if _currentValue < _targetValue
	{
		_currentValue += _changeAmount;
		_currentValue = min(_currentValue, _targetValue);
	}
	else
	{
		_currentValue -= _changeAmount;
		_currentValue = max(_currentValue, _targetValue);	
	}
	
	return _currentValue;
}