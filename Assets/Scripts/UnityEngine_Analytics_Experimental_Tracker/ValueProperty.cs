using System;

namespace UnityEngine.Analytics.Experimental.Tracker
{
	[Serializable]
	public class ValueProperty
	{
		public enum PropertyType
		{
			Disabled,
			Static,
			Dynamic
		}

		[SerializeField]
		private PropertyType m_PropertyType = PropertyType.Static;

		[SerializeField]
		private string m_ValueType;

		[SerializeField]
		private string m_Value = string.Empty;

		[SerializeField]
		private TrackableField m_Target;

		public string valueType
		{
			get
			{
				return m_ValueType;
			}
			set
			{
				m_ValueType = value;
			}
		}

		public string propertyValue
		{
			get
			{
				if (m_PropertyType == PropertyType.Dynamic && m_Target != null)
				{
					return m_Target.GetValue()?.ToString().Trim();
				}
				return (m_Value != null) ? m_Value.Trim() : null;
			}
		}

		public TrackableField target => m_Target;

		public bool IsValid()
		{
			switch (m_PropertyType)
			{
			case PropertyType.Static:
				return !string.IsNullOrEmpty(m_Value) || Type.GetType(m_ValueType) != typeof(string);
			case PropertyType.Dynamic:
				return m_Target != null && m_Target.GetValue() != null;
			default:
				return false;
			}
		}
	}
}
