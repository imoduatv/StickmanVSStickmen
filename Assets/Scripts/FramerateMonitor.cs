using UnityEngine;

public class FramerateMonitor : UserReportingMonitor
{
	private float duration;

	public float MaximumDurationInSeconds;

	public float MinimumFramerate;

	public FramerateMonitor()
	{
		MaximumDurationInSeconds = 10f;
		MinimumFramerate = 15f;
	}

	private void Update()
	{
		float deltaTime = Time.deltaTime;
		float num = 1f / deltaTime;
		if (num < MinimumFramerate)
		{
			duration += deltaTime;
		}
		else
		{
			duration = 0f;
		}
		if (duration > MaximumDurationInSeconds)
		{
			duration = 0f;
			Trigger();
		}
	}
}
