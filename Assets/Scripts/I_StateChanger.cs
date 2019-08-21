using UnityEngine;

public class I_StateChanger : MonoBehaviour
{
	public enum Action
	{
		activateOnAwake,
		activateOnStart,
		activateOnEnable,
		activateOnDisable,
		deactivateOnAwake,
		deactivateOnStart,
		deactivateOnEnable,
		deactivateOnDisable
	}

	public Action action;

	public float timeDelay;

	public GameObject targetObject;

	private void Awake()
	{
		if (action == Action.activateOnAwake)
		{
			Invoke("ActivateObject", timeDelay);
		}
		else if (action == Action.deactivateOnAwake)
		{
			Invoke("DeactivateObject", timeDelay);
		}
	}

	private void Start()
	{
		if (action == Action.activateOnStart)
		{
			Invoke("ActivateObject", timeDelay);
		}
		else if (action == Action.deactivateOnStart)
		{
			Invoke("DeactivateObject", timeDelay);
		}
	}

	private void OnEnable()
	{
		if (action == Action.activateOnEnable)
		{
			Invoke("ActivateObject", timeDelay);
		}
		else if (action == Action.deactivateOnEnable)
		{
			Invoke("DeactivateObject", timeDelay);
		}
	}

	private void OnDisable()
	{
		if (action == Action.activateOnDisable)
		{
			Invoke("ActivateObject", timeDelay);
		}
		else if (action == Action.deactivateOnDisable)
		{
			Invoke("DeactivateObject", timeDelay);
		}
	}

	private void ActivateObject()
	{
		targetObject.SetActive(value: true);
	}

	private void DeactivateObject()
	{
		targetObject.SetActive(value: false);
	}
}
