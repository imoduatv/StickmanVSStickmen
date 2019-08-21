using UnityEngine;

public class TrignometricScale : MonoBehaviour
{
	public Vector3 ScaleLimit;

	public Vector3 ScaleFrequency;

	private Vector3 FinalScale;

	private Vector3 StartRotation;

	private void Start()
	{
		StartRotation = base.transform.localScale;
	}

	private void Update()
	{
		FinalScale.x = StartRotation.x + Mathf.Sin(Time.timeSinceLevelLoad * ScaleFrequency.x) * ScaleLimit.x;
		FinalScale.y = StartRotation.y + Mathf.Sin(Time.timeSinceLevelLoad * ScaleFrequency.y) * ScaleLimit.y;
		FinalScale.z = StartRotation.z + Mathf.Sin(Time.timeSinceLevelLoad * ScaleFrequency.z) * ScaleLimit.z;
		base.transform.localScale = new Vector3(FinalScale.x, FinalScale.y, FinalScale.z);
	}
}
