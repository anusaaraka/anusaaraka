
(defrule what0
(declare (salience 5000))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what0   "  ?id "  kyA )" crlf))
)


;What a beautiful scene!
(defrule what1
(declare (salience 4900))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) a )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what1   "  ?id "  kiwanA )" crlf))
)

;$$$ Modified by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14) -- added +2 category as verb
; I did not know what to do.
(defrule what2
(declare (salience 4800))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
(id-cat_coarse =(+ ?id 2) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what2   "  ?id "  kyA )" crlf))
)

;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14)
;What are you reading?
(defrule what3
(declare (salience 4700))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what3   "  ?id "  kyA )" crlf))
)

;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14)
;What?
(defrule what4 
(declare (salience 4600))
(id-root 1 what)
?mng <-(meaning_to_be_decided 1)
(id-right_punctuation  1 PUNCT-QuestionMark)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what4   1    kyA )" crlf))
)

;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14)
;What time is it?
(defrule what5
(declare (salience 4600))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?vi ?id)
(id-cat_coarse =(+ ?vi 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what5  "?id "   kyA )" crlf))
)


;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14)
;What kind of music do you like? 
(defrule what6
(declare (salience 4600))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?vi ?id)
(viSeRya-of_saMbanXI  ?vi ?id1)
(id-cat_coarse =(+ ?id1 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what6  "?id "   kyA )" crlf))
)


;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (18-03-14)
;It does not matter what Ted does.
;yaha mahawwvapUrNa_nahIM hE ki tEda kyA karawA hE.
(defrule what7
(declare (salience 4500))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?k ?id)
(kriyA-vAkyakarma ?kri ?k)
(root-verbchunk-tam-chunkids ? ? does_not_0 $? ?kri)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what7   "  ?id "  kyA )" crlf))
)


;@@@ Added by Shirisha Manju ,Suggested by Chaitanya Sir (14-01-14)
;Let him tell what he can.
;I spent what little time I had with my family.
(defrule what8
(declare (salience 100))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp      what8   "  ?id "  jo )" crlf))
)


;"what","Conj","1.kyA"
;"what","Pron","1.kyA"
;What are you reading.
;
;------------------------------ Removed Rules ---------------------
; what3
;	if -1 word is tell then kyA
;	Note : contradictory examples : You tell what to do.    -- kyA
;					Let him tell what he can. -- jo
; what5
;	if category is 'conjunction' then 'kyA'
;
; what6
;	if category is 'pronoun' then 'kyA'
;
; what4
;	if praSnAwmaka_vAkya and  first position then 'kyA'
;	Note : contradictory examples : What?   -- kyA
;					What he says is irrelevant.  -- jo
