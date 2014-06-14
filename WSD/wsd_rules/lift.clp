;$$$--- Modified by Nandini(17-4-14)
;The plane has twenty seconds to lift off.
;havAIjahAja ko XarawI se Upara uTane meM bIsa sEkeMda hEM.
(defrule lift0
(declare (salience 5000))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uDAna_Bara));meaning change
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lift.clp	lift0  "  ?id "  " ?id1 "  uDAna_Bara  )" crlf))
)


(defrule lift1
(declare (salience 4900))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liPta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift1   "  ?id "  liPta )" crlf))
)

;"lift","N","1.liPta"
;There is no lift in his office.
;--"2.savArI_meM_le_jAne_kI_prakriyA"
;He will give me a lift.
;--"3.uwwolana"
;Upward lift of an aeroplane.
;--"4.unnayana"
;His advice gave me a tremendeous lift.
;
(defrule lift2
(declare (salience 4800))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift2   "  ?id "  uTA )" crlf))
)

;@@@--- Added by Nandini(17-4-14)
;His advice gave me a tremendous lift.
;usakI salAha ne muJe eka jabarxaswa unnayana xiyA.
(defrule lift3
(declare (salience 5050))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 tremendous)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift3   "  ?id " unnayana )" crlf))
)

;@@@--- Added by Nandini(17-4-14)
;The fog has lifted.
;koharA sAPa huA hE.
(defrule lift4
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 fog)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift4   "  ?id "  sAPa_ho )" crlf))
)

;@@@--- Added by Nandini(17-4-14)
;Somebody lifted his car last night. [from clp]
;kisIne piCalI rAwa usakI gAdI curAI.
(defrule lift5
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 car|scooter|taxi|truck)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id curA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift5   "  ?id "  curA )" crlf))
)

;@@@--- Added by Nandini(17-4-14)
;The appearance of the sun after four days of continuous rain lifted my spirits.[from clp]
;lagAwAra cAra xinoM  kI varRA ke bAxa sUraja kI upasWiwi ne mere uwsAha ko AhlAxiwa kiyA.
(defrule lift6
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 spirit)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AhlAxiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift6   "  ?id "  AhlAxiwa_kara )" crlf))
)


;@@@--- Added by Nandini(17-4-14)
;The curfew has been lifted.[from clp]
;karPyU uTA xiyA gayA hE.
(defrule lift7
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 curfew)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift7   "  ?id "  uTA_xe )" crlf))
)

;@@@--- Added by Nandini(17-4-14)
;It was a joy for the children to lift potatoes from our garden.[from clp]
;baccoM ke liye hamAre uxyAna se AlU KoxanA eka KuSI  WI.
(defrule lift8
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 potato)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift8   "  ?id "  Koxa )" crlf))
)

;@@@--- Added by Nandini(25-4-14)
;The survivors were lifted to safety by helicopter.[OALD]
;uwwarajIvIyoM ko helikoptara se surakRA ke liye le jAyA gayA WA.
(defrule lift9
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?id1)
(id-root ?id1 survivor)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift9   "  ?id "  le_jA )" crlf))
)

;@@@--- Added by Nandini(25-4-14)
;John lifted his eyes from his book.[OALD]
;joYna ne usakI puswaka se usakI AzKeM upara uTAIM.
(defrule lift10
(declare (salience 4850))
(id-root ?id lift)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 eye|eyebrow)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lift.clp 	lift10   "  ?id "  upara_uTA )" crlf))
)



;"lift","V","1.uTAnA"
;Lift the child.
;--"2.AhlAxiwa_karanA"
;The appearance of the sun after four days of continuous rain lifted my spirits.
;--"3.hatanA"
;The fog has lifted.
;--"4.curAnA"
;Somebody lifted his car last night.
;--"5.uTA_xenA"
;The curfew has been lifted.
;--"6.savArI_meM_le_jAnA"
;He will lift me from my office.
;
