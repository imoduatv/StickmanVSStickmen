using UnityEngine;

public class TrignometricRotation : MonoBehaviour
{
	public Vector3 AngleLimit;

	public Vector3 RotationFrequency;

	private Vector3 FinalRotation;

	private Vector3 StartRotation;

	private void Start()
	{
		StartRotation = base.transform.localEulerAngles;
	}

	private void Update()
	{
		FinalRotation.x = StartRotation.x + Mathf.Sin(Time.timeSinceLevelLoad * RotationFrequency.x) * AngleLimit.x;
		FinalRotation.y = StartRotation.y + Mathf.Sin(Time.timeSinceLevelLoad * RotationFrequency.y) * AngleLimit.y;
		FinalRotation.z = StartRotation.z + Mathf.Sin(Time.timeSinceLevelLoad * RotationFrequency.z) * AngleLimit.z;
		base.transform.localEulerAngles = new Vector3(FinalRotation.x, FinalRotation.y, FinalRotation.z);
	}
}
