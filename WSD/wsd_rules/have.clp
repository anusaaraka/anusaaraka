
;Deleted the redundant rules and modified the file .(Meena 9.4.10) 


;Modified by Meena(15.10.09); added "path" in the list for the cases like  "The path has many twist and turns." 
;Added by Meena(15.10.09)
;The towns have people largely from the factories and their families .
;The city has large educated population.
(defrule have0
(declare (salience 5500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(kriyA-subject ?id ?id1)
(id-root ?id1 path|town|city|party|assembly|country|university|bus|train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  have.clp        have0   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  have.clp        have0   "  ?id " meM )" crlf)
))



;File modified by Meena(Aug '09)
;Check this rule for "having" for the following sentences where we have different meanings for "having"
;We’re having the kids for the weekend.I was having difficulty in staying awake.
;We’re having our car repaired.She’s always having the builders in to do something or other.
;Added by Meena(12.10.09)
;(defrule have1
;(declare (salience 5000))
;(id-root ?id have)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id having)
;; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
;(kriyA-object ?id ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id hE ))
;(assert (kriyA_id-subject_viBakwi ?id ))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp      have1   "  ?id "  hE )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have1   "  ?id " ke_pAsa )" crlf)
;)
;)


;(id-word ?id have|has) uncommented by Meena to get the proper output for the sentence    "She had two pens."
;She has three pencils.
;I have a cow.
(defrule have2
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has); Commented by Sukhada. Ex. She has two pens. 
(id-root ?id1 cow|money|dog|rupee|computer|cat|house|shirts|servant|carpet|blanket|dollar|cycle|scooter|pen|pencil|car|book|bag|bat|ball|bottle|dictionary|stapler|key|chalk|brush|table|chair|gun|belt|saari)
; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE ))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have2   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have2   "  ?id " ke_pAsa )" crlf)
)
)


(defrule have3
(declare (salience 5000))
;(declare (salience 4900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)            
(id-root ?id1 grandfather|grandmother|child|son|daughter|uncle|aunt|auntie|father|mother|brother|sister|husband|wife|friend|servant|maid|maid)
;we should put a list of all  human relations and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have3   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have3   "  ?id "  ke )" crlf)
)
)
;karma=servants	hE<subj:ke>	0



;$$$ Added 'idea' in the list by Roja(03-05-14). Suggested by Chaitanya Sir.
;I have no idea   (Example given by Wardha Students)
;muJe jAnakArI nahIM hE. (Translation suggested by Chaitanya Sir.)
;Tested (Meena 24.10.09)
;I have difficulty in understanding Mathematics . 
(defrule have4
(declare (salience 5000))
;(declare (salience 3300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)         
(id-word ?id1 headache|objection|difficulty|trouble|toothache|fever|idea)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have4   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have4   "  ?id " ko )" crlf)
))



;Modified by Meena(10.4.10)
;Have a nap.
;Grandpa usually has a nap after lunch.
(defrule have5
(declare (salience 5000))
;(declare (salience 2700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has|had) ;added 'had' to the list by Shirisha Manju 9-5-14
(id-word ?id1 nap|sleep|shower)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have5   "  ?id "  le )" crlf))
)



(defrule have6
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has|had)
(id-word ?id1 walk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have6   "  ?id "  le )" crlf))
)

;$$$ Added 'kriyA_id-subject_viBakwi' by Roja(27-04-14). Suggested by Chaitanya Sir.
;I had a strange dream last night.
;piCalI rAwa muJe eka viciwra svapna AyA.
;piCalI rAwa mEMne eka viciwra svapna xeKA.
(defrule have7
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id have) ;Commented by Roja (27-04-14)
(id-root ?id1 dream)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(assert (kriyA_id-subject_viBakwi ?id ko)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have7   "  ?id "  A )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have7   "  ?id " ko )" crlf))
)


;Added by Meena(12.10.09)
;I am having my dinner.
(defrule have8
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id having)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit|breakfast|food) ; added breakfast and food in the list, by Aditya and Hardik,IIT(BHU)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp      have8   "  ?id "  KA )" crlf))
)



;Added by Meena(25.4.11)
;She is having an affair with a married man. (link 2nd parse)
;usakA eka SAxISuxA AxamI ke sAwa prema sambanXa cala rahA hE. (Translation Suggested by Chaitanya Sir. Added by Roja 27-04-14) 
(defrule have_cala
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id having)
(id-root ?id1 affair)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (kriyA_id-subject_viBakwi ?id kA))
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp      have_cala   "  ?id "  cala )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have_cala   "  ?id " kA )" crlf))
)


;Uncommented by Meena(10.4.10) because "have8"  does not work for the following and similar other examples.
;She has dinner at 6 O'clock.
(defrule have9
(declare (salience 5000))
;(declare (salience 2200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have9   "  ?id "  KA )" crlf))
); Commented by Sukhada because rule 'have8' will do the same job.


(defrule have10
(declare (salience 5000))
;(declare (salience 1500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(id-root ?id1 drink|water|milk|tea|coffee|beer|coke)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have10   "  ?id "  pI )" crlf))
)



(defrule have11
(declare (salience 5000))
;(declare (salience 900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 breakfast|rest|bath|wash|talk)
(id-word ?id have|has|had) ;added had to the list by Shirisha Manju 9-5-14
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have11   "  ?id "  kara )" crlf))
)


(defrule have12
(declare (salience 4000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(id-root =(+ ?id 1) his|her|my|our|their|your)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have12   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have12   "  ?id " ke  )" crlf)
)
)


(defrule have13
(declare (salience 4000))
;(declare (salience -200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has|had)
(id-word ?id1 opportunity)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have13   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have13   "  ?id " ke_pAsa )" crlf)
)
)


(defrule have14
(declare (salience 4000))
;(declare (salience -300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(id-word ?id1 faith)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have14   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have14   "  ?id " ko )" crlf)
)
)



(defrule have15
(declare (salience 4000))
;(declare (salience -400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has|had) ;added 'has|had' in the list by Shirisha Manju 3-5-14 
(id-root =(- ?id 1) where|what|when)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have15   "  ?id "  hE )" crlf))
)


(defrule have16
(declare (salience 4000))
;(declare (salience -700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has|had);added 'has|had' in the list by Shirisha Manju 3-5-14
(id-root ?id1 luck|class)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have16   "  ?id "  hE )" crlf))
)


(defrule have20
(declare (salience 5500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(id-root ?id1 town|city|party|assembly|country|university|bus|train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  have.clp        have20   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  have.clp        have20   "  ?id " meM )" crlf)
))


;Added "insurance" in the list (Meena 6.2.11)
;I had a computer.
(defrule have21
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 cow|money|dog|rupee|computer|cat|house|shirts|blanket|carpet|dollar|cycle|scooter|insurance)
; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA ))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have21   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have21   "  ?id " ke_pAsa )" crlf)
)
);Commented by Sukhada because the rule 'have2' will work for this.


(defrule have22
(declare (salience 5000))
;(declare (salience -1000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had )
(id-root ?id2 grandfather|grandmother|child|son|daughter|wife|husband|uncle|aunt|auntie|brother|sister|servant|maid|friend)
;we should put a list of all  human relations and use the semantic relation
(kriyA-object ?id ?id2)
(viSeRya-det_viSeRaNa ?id2  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have22   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have22   "  ?id " ke )" crlf)
)
)


(defrule have23
(declare (salience 5000))
;(declare (salience -3600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 headache|objection|difficulty|toothache|trouble|fever)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have23   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have23   "  ?id " ko )" crlf)
)
)


;The rule uncommented by Meena(10.4.10), as 'have8' does not give the correct output for   
;I had dinner at 10 o'clock in the night. 
(defrule have27
(declare (salience 5000))
;(declare (salience -4700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit|breakfast|snacks|food) ; added breakfast,snacks and food in the list, by Aditya and Hardik,IIT(BHU)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have27   "  ?id "  KA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have27   "  ?id " ne )" crlf)
); Commented by Sukhada because rule 'have8' will do the same job.





(defrule have28
(declare (salience 5600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 drink|tea|coffee|milk|coke|juice|water|beer)
(kriyA-object ?id ?id1)
(or (kriyA-in_saMbanXI ?id ?id2)(kriyA-at_saMbanXI ?id ?id2)(kriyA-after_saMbanXI ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have28   "  ?id "  pI )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have28   "  ?id " ne )" crlf)
;(assert (kriyA_id-subject_viBakwi ?id ne))
)



(defrule have30
(declare (salience 4000))
;(declare (salience -6800))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root =(+ ?id 1) his|her|my|our|your|their)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have30   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have30   "  ?id " ke )" crlf)
)
)


(defrule have32
(declare (salience 4000))
;(declare (salience -300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 faith)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have32   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have32   "  ?id " ke )" crlf))
)


;Added by Meena(12.4.10)
;Everyone has a right to education.
(defrule have035
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(viSeRya-to_saMbanXI ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have035   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have035   "  ?id "  ko )" crlf))
)



;Added by Meena(17.2.11)
;He has a vacant look on his face.
(defrule have0035
(declare (salience 4001))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(kriyA-object ?id ?id1)
(id-root ?id1 look|expression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liye_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have0035   "  ?id "  liye_hE )" crlf))
)



;$$$ Modified by Shirisha Manju 3-5-14 Suggested by Sukhada  
;Modified subject viBakwi 'kA' as 'ke' 
;A rabbit has long ears. 
;KaragoSa ke lambe kAna hEM.

;Modified by Meena(15.2.11) for the examples like : The hospital has no vacant beds.
;They have social prestige .
;The cows have four legs and a tail.
(defrule have35
(declare (salience 4000))
;(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have|has)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(id-word  ?id1 ?word)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
	(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have35   "  ?id "  hE )" crlf)
)
(if (or(eq ?word hospital)(eq ?word school)(eq ?word house)(eq ?word room)(eq ?word building)(eq ?word college)) then
     (assert (kriyA_id-subject_viBakwi ?id meM))
     (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have35   "  ?id "  meM )" crlf)
     )
else
     (assert (kriyA_id-subject_viBakwi ?id ke)) ;Modified 'kA' as 'ke' by Shirisha Manju 3-5-14
     (if ?*debug_flag* then
	(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have35   "  ?id "  ke )" crlf)
     )
)
)



;Added by Meena(17.2.11)
;He had a vacant look on his face.
(defrule have036
(declare (salience 4001))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-object ?id ?id1)
(id-root ?id1 look|expression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liye_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have036   "  ?id "  liye_WA )" crlf))
)



;They had social prestige.
;The cow had four legs and a tail.
(defrule have36
(declare (salience 4000))
;(declare (salience 900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have36   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have36   "  ?id " kA )" crlf))
)




;The recent advertising campaign has had a marked effect on sales .
(defrule have37
(declare (salience 4000))
;(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-object ?id ?id1)
(or (kriyA-on_saMbanXI  ?id ?id2)(viSeRya-on_saMbanXI ?id1 ?id2)) ;Added by manju suggested by sukhada(20-01-11)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have37   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have37  "  ?id " kA )" crlf))
)


;Salience increased by Meena(12.4.10) to stop have35 from firing for this example.
;I have doubts about inviting him .
(defrule have_obj_doubt
(declare (salience 4000))
;(declare (salience 0))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 doubt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have_obj_doubt   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have_obj_doubt   "  ?id " ko )" crlf))
)



;Added by Meena(24.8.09)
;I want to have this and I want to have that.
(defrule to_have
(declare (salience 4000))
;(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) -));Modified by S.Maha Laxmi(24-2-2012)(previously meanings were given separately as (assert (id-wsd_root_mng ?id -)) (assert (id-wsd_root_mng =(- ?id 1) -)))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp  to_have  "  ?id "  " (- ?id 1) "  -  )" crlf))
)


;---------------------------------------------------------------
;>2  have=honA1 {default}  , karwA meM 'kA'  ;She has three sons.
;                                             which can be owned)
;----------------------------------------------------------------------
;    V |	object		      |Semantic feature   |	tgt 
;------|-----------------------|-------------------|-------------------- 
;  have| breakfast,lunch,dinner| eatable	    	  | KAnA		
;      | supper, a meal,cake ..|                   |
;------|-----------------------|-------------------|-------------
;  have| water,tea,drink,beer..| drink	          | pInA
;------|-----------------------|-------------------|-------------	
;  have| good day,pleasant     | 		  | acCA_bIwanA
;      | journey,comfortable   |			  |{karwA:kA}
;      | flight, good time.... |		    	  |
;------|-----------------------|-------------------|-------------
;  have| a sleep,a nap,a shower| 		  | lenA
;------|-----------------------|-------------------|--------------
;  have| a dream               |                   | AnA  {karwA:ko}
;--------------|-------------------|----------
;  have| difficulty,trouble....| biological        | honA  {karwA:ko}
;      | fever, headache ....  | experience        |
;------|-----------------------|-------------------|-----------
;  have| (det) rest	      |	         	  | karanA
;      |a row,a fight,a chat   | any noun denoting |
;      | a conversation, a bath|    action         |
;      | a shave, a try        |                   |
;------|-----------------------|-------------------|-----------  
;  have| an operation,an       |                   | honA
;      | accident,a nervous    |                   | {karwA:kA}
;      | breakdown....         |                   |

;------|-----------------------|-------------------|------------
;  have| a baby  	      |		          | janma_xenA
;------|-----------------------|-------------------|--------


;"have","V","1.pAsa honA"
;I have a computer
;
;
;
;---------------------------------------------------------------
;>2  have=honA1 {default}  , karwA meM 'kA'  ;She has three sons.
;                                             which can be owned)
;----------------------------------------------------------------------
;    V |	object		      |Semantic feature   |	tgt 
;------|-----------------------|-------------------|-------------------- 
;  have| breakfast,lunch,dinner| eatable	    	  | KAnA		
;      | supper, a meal,cake ..|                   |
;------|-----------------------|-------------------|-------------
;  have| water,tea,drink,beer..| drink	          | pInA
;------|-----------------------|-------------------|-------------	
;  have| good day,pleasant     | 		  | acCA_bIwanA
;      | journey,comfortable   |			  |{karwA:kA}
;      | flight, good time.... |		    	  |
;------|-----------------------|-------------------|-------------
;  have| a sleep,a nap,a shower| 		  | lenA
;------|-----------------------|-------------------|--------------
;  have| a dream               |                   | AnA  {karwA:ko}
;------|-----------------------|-------------------|----------
;  have| difficulty,trouble....| biological        | honA  {karwA:ko}
;      | fever, headache ....  | experience        |
;------|-----------------------|-------------------|-----------
;  have| (det) rest	      |	         	  | karanA
;      |a row,a fight,a chat   | any noun denoting |
;      | a conversation, a bath|    action         |
;      | a shave, a try        |                   |
;------|-----------------------|-------------------|-----------  
;  have| an operation,an       |                   | honA
;      | accident,a nervous    |                   | {karwA:kA}
;      | breakdown....         |                   |
;------|-----------------------|-------------------|------------
;  have| a baby  	      |		          | janma_xenA
;------|-----------------------|-------------------|--------
;"have","V","1.pAsa honA"
;
;
(defrule have39
(declare (salience 4000))
;(declare (salience -7600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have39  "  ?id "  " ?id1 "  pahana  )" crlf))
)
;This is a nice saree you have on.
;yaha sAdZI bahuwa acCI hE jo wumane pahanI hE



(defrule have40
(declare (salience 4000))
;(declare (salience -7700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bevakUPa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have40  "  ?id "  " ?id1 "  bevakUPa_banA  )" crlf))
)
;Is it true that you are having me on from the last two days?
;kyA yaha saca hE ki wuma piCale xo xinoM se muJe bevakUPa banA rahe ho ?



(defrule have41
(declare (salience 4000))
;(declare (salience -7800))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 axAlawa_meM_praswuwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have41  "  ?id "  " ?id1 "  axAlawa_meM_praswuwa_ho  )" crlf))
)
;He was had up for his divorce.
;vaha axAlawa meM walAka ke lie praswuwa huA
; NOTE: have.rls is also required, to account for have as a verb.
;As in:

;;;@@@   ---Added by Prachi Rathore
;The Universe was extremely hot at the time of creation and had zero volume!
;उत्पत्ति के समय ब्रह्मांड अत्यंत गर्म था और इसका आयतन शून्य था।
(defrule have42
(declare (salience 4000))
(id-root ?id have)
(id-word ?id had)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
(conjunction-components  ? ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp       have42   "  ?id "  WA)" crlf))
)

;;;@@@   ---Added by Prachi Rathore
;They had a row again.
;उनकी फिर से झगडा हुआ . 
(defrule have43
(declare (salience 4000))
(id-root ?id have)
(id-word ?id had)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
(kriyA-aXikaraNavAcI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp       have43   "  ?id "  ho)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have43   "  ?id " kA )" crlf))
)

;;;@@@   ---Added by Prachi Rathore
;Have you seen Roz?[cambridge]
;क्या आपने रोज़ को देखा हैं? 
(defrule have44
(declare (salience 5000))
(id-root 1 have)
?mng <-(meaning_to_be_decided 1)
(id-cat_coarse 1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have44   "  1 "  kyA )" crlf))
)

;;;@@@   ---Added by Prachi Rathore
;It was too early in the year for snow, but at night Harsil had its first shower of rain and the mountain peaks their first snowfall of the season. [gyannidhi]
;अभी बर्फ गिरने का समय नहीं था, लेकिन जिस दिन वे लोग वहां पहुंचे, उसी रात पहली वर्षा हुई और पर्वतों की चाटियों पर पहली बर्फ गिरी थी।
(defrule have45
(declare (salience 5200))
(id-root ?id have)
(id-word ?id had)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
(conjunction-components  ? ?id ?)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp       have45   "  ?id "  ho)" crlf))
)

;---------------------- Removed rules --------------------
;have19 	Removed by Shirisha Manju 3-5-14
;			if word 'has' and -1 is where|what|when then	'hE' 	Note : added 'has' in have15 rule
;have17 	Removed by Shirisha Manju 3-5-14	
;			if word 'has' and object is 'walk'  then  'le'		Note : added 'has' in have6 rule
;have25 	Removed by Shirisha Manju 3-5-14        
;       		if word 'had' and object is 'walk'  then  'le'          Note : added 'had' in have6 rule
;have18 	Removed by Roja(27-04-14) as its a repeatition rule.		Note : same as have7	
;have26 	Removed by Shirisha Manju 3-5-14				Note : same as have7	
;have31 	Removed by Shirisha Manju 8-5-14				
;			if word had and object is 'opportunity' then 'ho'	Note : added 'had' in have13 rule
;			and subject viBakwi ke_pAsa
;have33 	Removed by Shirisha Manju 8-5-14				
;			if word 'had' and -1 is where|what|when then    'hE'    Note : added 'had' in have15 rule
;have34 	Removed by Shirisha Manju 8-5-14				
;			if word had and subject is 'luck|class' then  'hE'	Note : added 'had' in have16 rule 
;have24 	Removed by Shirisha Manju 9-5-14				
;			if word had and object is nap|sleep|shower then 'le'	Note : added 'had' in have5 rule 
;have29 	Removed by Shirisha Manju 9-5-14				
;			if word had and object is 'breakfast|bath|rest|wash|talk' then 'kara'  Note : added 'had' in have11 rule
