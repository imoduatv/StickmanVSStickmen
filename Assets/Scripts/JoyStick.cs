using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class JoyStick : MonoBehaviour, IDragHandler, IPointerDownHandler, IEventSystemHandler
{
	public Image bgimage;

	public Image joystickimage;

	private Vector3 inputvector3;

	public Vector3 Cursorpos;

	private void Start()
	{
	}

	public virtual void OnPointerDown(PointerEventData ped)
	{
	}

	public virtual void OnDrag(PointerEventData ped)
	{
		if (RectTransformUtility.ScreenPointToLocalPointInRectangle(bgimage.rectTransform, ped.position, ped.pressEventCamera, out Vector2 localPoint))
		{
			float x = localPoint.x;
			Vector2 sizeDelta = bgimage.rectTransform.sizeDelta;
			localPoint.x = x / sizeDelta.x;
			float y = localPoint.y;
			Vector2 sizeDelta2 = bgimage.rectTransform.sizeDelta;
			localPoint.y = y / sizeDelta2.y;
			inputvector3 = new Vector3(localPoint.x * 2f, localPoint.y * 2f, 0f);
			RectTransform rectTransform = joystickimage.rectTransform;
			float x2 = inputvector3.x;
			Vector2 sizeDelta3 = bgimage.rectTransform.sizeDelta;
			float x3 = x2 * (sizeDelta3.x / 2f);
			float y2 = inputvector3.y;
			Vector2 sizeDelta4 = bgimage.rectTransform.sizeDelta;
			rectTransform.anchoredPosition = new Vector3(x3, y2 * (sizeDelta4.y / 2f), 0f);
			Cursorpos = joystickimage.rectTransform.position;
		}
	}
}
