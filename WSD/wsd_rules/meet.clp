
(defrule meet0
(declare (salience 5000))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id meeting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  meet.clp  	meet0   "  ?id "  saBA )" crlf))
)

;given_word=meeting && word_category=noun	$bETaka)

;"meeting","N","1.bETaka"
;The meeting was postponed due to the strike.
;--"2.milana"
;The meeting of the two friends after a gap of ten years was accidental.
;



;Added by Meena(6.5.10)
;I will show you the house where I met your mother . 
(defrule meet1
(declare (salience 4900))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  se )" crlf)
)
)


;========default-rule==========

;Salience reduced by Meena(6.5.10)
(defrule meet2
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp 	meet2   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  meet.clp      meet2   "  ?id "  ko )" crlf)
)
)

;@@@ Added by Nandini (12-11-2013)
;Others have met similar problems.[oxford advanced lerner dictionary]
;xusareM samAna samasyAoM kA anuBava kiyA.
(defrule meet3
(declare (salience 4900))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 problem|death)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  anuBava_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  meet.clp      meet3   "  ?id "  kA )" crlf)
)
)

;@@@ Added by Nandini (12-11-2013)
;The curtains do not meet in the middle. [oxford advanced lerner dictionary]
;parxe maXyasWala meM nahIM milawe hEM.
(defrule meet4
(declare (salience 4700))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 hand|river|curtain)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  sparSa_kara )" crlf))
)

;@@@ Added by Nandini (12-11-2013)
;The cost will be met by the company. [oxford advanced lerner dictionary]
;KarcA kampanI ke xvArA BugawAna kiyA jAegA.
(defrule meet5
(declare (salience 4600))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 company)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BugawAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet5   "  ?id "  BugawAna_kara )" crlf))
)

;@@@ Added by Nandini (12-11-2013)
;How can we best meet the needs of all the different groups? [oxford advanced lerner dictionary]
;hama saBI alaga samUhoM meM se jarUrawa ko sabase acCA kEse pUrA kara sakawe hEM?
(defrule meet6
(declare (salience 4500))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 deadline|condition|need)
(or(kriyA-object  ?id ?id1)(kriyA-karma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet6   "  ?id "  pUrA_kara )" crlf))
)

;@@@ Added by Nandini (12-11-2013)
;She was worried that he might have met with an accident. [oxford advanced lerner dictionary]
;vaha cinwiwa WI ki vaha eka xurGatanA ke sAWa SAyaxa milA hogA.
(defrule meet7
(declare (salience 4400))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 resistance)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet7   "  ?id "  sAmanA_kara )" crlf))
)
;She was worried that he might have met with an accident.[oxford advanced lerner dictionary]
;vaha cinwiwa WI ki SAyaxa usake sAWa eka xurGatanA hogI.
(defrule meet8
(declare (salience 4300))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 accident)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet8   "  ?id "  ho )" crlf))
)

;@@@ Added by Nandini (14-12-2013)
;They threatened to blow up the plane if their demands were not met.[via-mail]
;yaxi unakI mAzgeM pUrA_nahIM huI wo unhoMne vAyuyAna XamAke_se udAne ke liye XamakAyA. 
(defrule meet9
(declare (salience 4550))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 demand|condition|requirement)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet9   "  ?id "  pUrA_ho )" crlf))
)

;"meet","V","1.milanA"
;I don't know whether I would like to meet her.
;--"2.se_BeMta_karanA"
;The Prime MInister met his cabinet for the talks.
;--"3.sAmanA_karanA"
;The Indian team met the Australians in the finals.
;--"4.pUrA_kara_pAnA"
;It is impossible to meet the deadline under the present circumstances.

;==========Additional Examples===========
;The meeting of the two friends after a gap of ten years was accidental.
;Sarita met with an accident.
;I don't know whether I would like to meet her.
;The meeting was postponed due to the strike.
;I will show you the house where I met your mother . 
;Maybe we'll meet again some time.
;Did you meet anyone in town?
;The committee meets on Fridays.
;The Prime Minister met other European leaders for talks.
;The President met with senior White House aides.
;Let's meet for a drink after work.
;We're meeting them outside the theatre at 7 pm .
;Will you meet me at the airport?
;The hotel bus meets all incoming flights.
;I met him off the plane.
;Where did you first meet your husband? 
;Pleased to meet you.
;It was nice meeting you.
;There's someone I want you to meet.
;I don't think we've met.
;Smith and Jones met in last year's final.
;Smith met Jones in last year's final.
;Others have met similar problems.
;How she met her death will probably never be known.
;The curtains don't meet in the middle.
;That's where the river meets the sea.
;His hand met hers.
;How can we best meet the needs of all the different groups?
;Until these conditions are met we cannot proceed with the sale.
;I can't possibly meet that deadline.
;The cost will be met by the company.
;They met up again later for a drink.
;The President met with senior White House aides.
;Her proposal met with resistance from the Left.
;She was worried that he might have met with an accident.
;His suggestion was met with howls of protest.
