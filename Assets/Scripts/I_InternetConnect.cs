using UnityEngine;

public class I_InternetConnect : MonoBehaviour
{
	public string m_ReachabilityText = "Null";

	public static I_InternetConnect instance;

	public static bool isInternetAvailable;

	private void Awake()
	{
		UnityEngine.Debug.Log("Internet : " + m_ReachabilityText);
		if (Application.internetReachability == NetworkReachability.ReachableViaCarrierDataNetwork)
		{
			m_ReachabilityText = "Reachable via carrier data network.";
			isInternetAvailable = true;
		}
		else if (Application.internetReachability == NetworkReachability.ReachableViaLocalAreaNetwork)
		{
			m_ReachabilityText = "Reachable via Local Area Network.";
			isInternetAvailable = true;
		}
		else if (Application.internetReachability == NetworkReachability.NotReachable)
		{
			m_ReachabilityText = "Not Reachable.";
			isInternetAvailable = false;
		}
	}

	private void Start()
	{
	}
}
