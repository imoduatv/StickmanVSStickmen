using UnityEngine;

public class AnimatorBehaviour : StateMachineBehaviour
{
	public string animname;

	public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		if (animname == "l20")
		{
			GameManager.instance.hand1.SetActive(value: false);
		}
	}

	public override void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		if (animname == "helphand" && !GameManager.instance.shootareadefault.activeSelf)
		{
			InGameUI.instance.helphandl3.SetActive(value: true);
		}
		if (animname == "hint")
		{
			InGameUI.instance.HintBulbPerma.SetActive(value: true);
			InGameUI.instance.HintBulb.SetActive(value: false);
		}
		if (animname == "NeedStar")
		{
			animator.gameObject.SetActive(value: false);
		}
	}
}
