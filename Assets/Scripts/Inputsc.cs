using UnityEngine;

public class Inputsc : MonoBehaviour
{
	public Camera MainCam;

	public RectTransform myRectT;

	private Vector3 result;

	private void Start()
	{
		MainCam = Camera.main;
	}

	private void Update()
	{
		UnityEngine.Debug.Log(RectTransformUtility.ScreenPointToWorldPointInRectangle(screenPoint: new Vector2(0f, 24f), rect: myRectT, cam: MainCam, worldPoint: out result));
		UnityEngine.Debug.Log(result);
	}
}
