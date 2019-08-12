/// @description TIME IS ADDED IN BEGIN STEP: HERE'S WHY:
/** 
  * We need to increase the timer before calling mp_map_syncIn in Begin Step
  * can't change it anymore before mp_map_syncOut in End Step, otherwise 
  * we would overwrite it. Alternatively, you can also call mp_map_syncIn again
  * for a variable if you need to change it during the step, however that
  * is not recommended in all cases and could lead to strange behaviour.
  * tl;dr: Put the changes to the variables you sync via mp_add in Begin Step.
  *        (Variables changed via mp_addPosition etc. are not effected and can
  *        be changed during the step)

/* */
/*  */
