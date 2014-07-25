;@@@ Added by Anita--22.3.2014
;This is because as explained earlier it is reasonable to suppose that individual measurements are as ;likely to overestimate as to underestimate the true value of the quantity. [ncert]
;क्योङ्कि जैसा पहले स्पष्ट किया जा चुका है कि यह मानना युक्तिसङ्गत है कि किसी राशि की व्यष्टिगत माप उस राशि के वास्तविक मान से ;
;उतनी ही अधिआकलित हो सकती है, जितनी उसके अवआकलित होने की सम्भावना होती है ।
(defrule reasonable0
(declare (salience 5000))
(id-root ?id reasonable)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwisMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reasonable.clp 	reasonable0   "  ?id " yukwisMgawa )" crlf))
)

;@@@ Added by Anita-3.4.2014
;Any reasonable person would have done exactly as you did. [oxford learner's dictionary]
;जैसा तुमने किया कोई भी विवेकी व्यक्ति ऐसा ही करता ।
(defrule reasonable1
(declare (salience 4900))
(id-root ?id reasonable)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivekI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reasonable.clp 	reasonable1   "  ?id " vivekI )" crlf))
)

;@@@ Added by Anita-3.4.2014
;We have reasonable grounds for believing that you are responsible. [oxford learner's dictionary]
;हमारे पास विश्वास करने के लिए उचित आधार हैं कि आप इसके लिए जिम्मेदार हैं ।
(defrule reasonable2
(declare (salience 4950))
(id-root ?id reasonable)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ground|reason)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reasonable.clp 	reasonable2   "  ?id " uciwa )" crlf))
)

;@@@ Added by Anita-3.4.2014
;The hotel was reasonable, I suppose. [oxford learner's dictionary]
;मैं सोचता हूँ कि होटल ठीक ठाक था ।
(defrule reasonable3
(declare (salience 5100))
(id-root ?id reasonable)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 hotel|restaurant|cafeteria)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_TAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reasonable.clp 	reasonable3   "  ?id " TIka_TAka )" crlf))
)
;#####################################default-rule###########################################
;@@@ added by Anita-3.4.2014
;There's a reasonable chance that he'll come.  [oxford learner's dictionary]
; उसके आने की पर्याप्त संभावना है ।
(defrule reasonable_default-rule
(id-root ?id reasonable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reasonable.clp 	reasonable_default-rule   "  ?id " paryApwa )" crlf))
)
