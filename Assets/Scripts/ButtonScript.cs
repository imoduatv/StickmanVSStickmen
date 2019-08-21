using System;
using UnityEngine;
using UnityEngine.EventSystems;

[Serializable]
public class ButtonScript : MonoBehaviour, IPointerDownHandler, IPointerUpHandler, ISubmitHandler, IEventSystemHandler
{
	public static EventHandler buttonDown;

	public static EventHandler buttonUp;

	public int StarsAchieved;

	private void OnEnable()
	{
		buttonUp = (EventHandler)Delegate.Combine(buttonUp, new EventHandler(onButtonDown));
	}

	private void OnDisable()
	{
		buttonUp = (EventHandler)Delegate.Remove(buttonUp, new EventHandler(onButtonDown));
	}

	public void OnSubmit(BaseEventData eventData)
	{
		UnityEngine.Debug.Log(eventData.selectedObject.name);
		onButtonDown(eventData.selectedObject.name, null);
	}

	private void onButtonDown(object obj, EventArgs args)
	{
		if (base.gameObject.activeSelf && obj.ToString().Contains(base.gameObject.name))
		{
		}
	}

	public void OnPointerDown(PointerEventData data)
	{
		if (buttonDown != null)
		{
			buttonDown(base.gameObject.name, null);
		}
	}

	public void OnPointerUp(PointerEventData data)
	{
		if (buttonUp != null)
		{
			buttonUp(base.gameObject.name, null);
		}
	}

	public void level_func(int num)
	{
	}

	private void Start()
	{
		StarsAchieved = PlayerPrefs.GetInt(base.gameObject.name + "Stars");
		if (StarsAchieved > 0)
		{
			for (int i = 0; i <= StarsAchieved - 1; i++)
			{
				base.transform.GetChild(2).transform.GetChild(i).gameObject.SetActive(value: true);
			}
		}
	}
}
