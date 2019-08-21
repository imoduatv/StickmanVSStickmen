using UnityEngine;
using UnityEngine.UI;

public class Paralax : MonoBehaviour
{
	public bool gyroEnabled;

	private Gyroscope gyroscope;

	public GameObject Cameraobject;

	private Quaternion rot;

	public Text texts;

	private void Start()
	{
		gyroscope.enabled = true;
		gyroEnabled = Enablegyro();
		Cameraobject = new GameObject("camera container");
		Cameraobject.transform.position = base.transform.position;
		base.transform.SetParent(Cameraobject.transform);
	}

	private void Update()
	{
		if (gyroEnabled)
		{
			base.transform.localRotation = gyroscope.attitude * rot;
		}
		texts.text = base.transform.localRotation.ToString();
	}

	private bool Enablegyro()
	{
		UnityEngine.Debug.Log(SystemInfo.supportsGyroscope);
		if (SystemInfo.supportsGyroscope)
		{
			gyroscope = Input.gyro;
			gyroscope.enabled = true;
			Cameraobject.transform.rotation = Quaternion.Euler(90f, 90f, 0f);
			rot = new Quaternion(0f, 0f, 1f, 0f);
			return true;
		}
		return false;
	}
}
