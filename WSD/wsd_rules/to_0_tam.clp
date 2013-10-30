
(defrule to_0_tam0
(declare (salience 5000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 follow)
(kriyA-follow_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 isake_bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam0  "  ?id "  isake_bAxa_meM )" crlf))
)

(defrule to_0_tam1
(declare (salience 4900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 follow)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 isake_bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam1  "  ?id "  isake_bAxa_meM )" crlf))
)

(defrule to_0_tam2
(declare (salience 4800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) considered )
(id-word =(+ ?id 1) be)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam2  "  ?id "  - )" crlf))
)

(defrule to_0_tam3
(declare (salience 4700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam3  "  ?id "  nA )" crlf))
)

;To stimulate is to cause to be alert && energetic.
(defrule to_0_tam4
(declare (salience 4600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) order )
(id-word =(- ?id 2) in)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam4  "  ?id "  nA_ke_liye )" crlf))
)

(defrule to_0_tam5
(declare (salience 4500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) from)
(id-cat_coarse =(+ ?id 1) ~verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam5  "  ?id "  waka )" crlf))
)

;He ran from point A to point B.
; Ram is believed to have killed Ravana.
;from_list(previous_root,subj_subj_raising_verb.dat) && following_word=have	-	0
(defrule to_0_tam6
(declare (salience 4400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) appear|believe|seem)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam6  "  ?id "  - )" crlf))
)

(defrule to_0_tam7
(declare (salience 4300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) begin|cease|choose|continue|dislike|forget|hate|learn|like|love|mean|need|prefer|remember|start|teach|want)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam7  "  ?id "  nA )" crlf))
)

; I want him to pass the exam
(defrule to_0_tam8
(declare (salience 4200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) begin|start|like|love|forget)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam8  "  ?id "  nA )" crlf))
)

; Anne began to cry.
;following_root=seem && following_category=verb	{tam:wA_huA}	0
;They seem to resemble each other.
(defrule to_0_tam9
(declare (salience 4100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) going )
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam9  "  ?id "  ne )" crlf))
)

;He is going to start it.
(defrule to_0_tam10
(declare (salience 4000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) ability)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam10  "  ?id "  ne_kI )" crlf))
)

;He has ability to cross the river.
(defrule to_0_tam11
(declare (salience 3900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) opportunity)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam11  "  ?id "  ne_kA )" crlf))
)

;He has the opportunity to go to school.
(defrule to_0_tam12
(declare (salience 3800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) way|method|procedure|order)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam12  "  ?id "  ne_kA )" crlf))
)

;This is the right way to go.
;This is the way to go.
(defrule to_0_tam13
(declare (salience 3700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) aim|purpose|plan|idea)
(id-root =(- ?id 1) is|are|be|was|were|been|am)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam13  "  ?id "  nA )" crlf))
)

;His aim was to become president.
(defrule to_0_tam14
(declare (salience 3600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) is|are|be|was|were|been|am)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam14  "  ?id "  ne_vAlA )" crlf))
)

;He was to become president.
(defrule to_0_tam15
(declare (salience 3500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) think)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam15  "  ?id "  nA )" crlf))
)

; I thought it right to resign.
(defrule to_0_tam16
(declare (salience 3400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) hope|desire|wish|expect|need)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam16  "  ?id "  ne_kI )" crlf))
)

;They hoped to get first class.
(defrule to_0_tam17
(declare (salience 3300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) attempt|intend|decide|offer|try)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam17  "  ?id "  ne_kA )" crlf))
)

;They intend to go there.
(defrule to_0_tam18
(declare (salience 3200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) propose|promise)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam18  "  ?id "  ne_kA )" crlf))
)

;They promised her to go there.
(defrule to_0_tam19
(declare (salience 3100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) fear|agree)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam19  "  ?id "  ne_se )" crlf))
)

;They fear to go there.
(defrule to_0_tam20
(declare (salience 3000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam20  "  ?id "  ne_ke_liye )" crlf))
)

;I sleep to take rest.
;previous_word=enough && previous_minus_two_category=adjective && following_category=verb	{tam:ne_ke_liye}	0
;He is strong enough to lift this.
(defrule to_0_tam21
(declare (salience 2900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) what|when|where|why|how|who)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam21  "  ?id "  nA )" crlf))
)

;I don't know how to do it.
;I shall show you how to operate it
(defrule to_0_tam22
(declare (salience 2800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-word =(- ?id 2) too)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam22  "  ?id "  ne_ke_liye )" crlf))
)

;She is too weak to carry this box.
(defrule to_0_tam23
(declare (salience 2700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) duty|responsibility)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam23  "  ?id "  nA )" crlf))
)

;It is my duty to go.
;previous_category=noun && from_list(previous_verb,is|are|be|was|were|been|am) && following_category=verb	{tam:nA_ke_liye}	0
;He is the right person to go to Paris && negotiate.
(defrule to_0_tam24
(declare (salience 2600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) afraid|horrified|terrified)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam24  "  ?id "  ne_se )" crlf))
)

;I was afraid to go home.
(defrule to_0_tam25
(declare (salience 2500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) happy|glad|sad|shocked|surprised|amazed|pleased|disheartened|dismayed|disappointed|delighted)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 0_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam25  "  ?id "  0_kara )" crlf))
)

;We were glad to see him.
;from_list(previous_word,easy_nA_meM_to.dat) && following_category=verb	{tam:ne_meM}	0
;It is easy to learn Hindi.
;His speech was difficult to follow
(defrule to_0_tam26
(declare (salience 2400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it|It|is)
(id-cat_coarse =(- ?id 1) adjective)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam26  "  ?id "  nA )" crlf))
)

;It is nice to see you again.
(defrule to_0_tam27
(declare (salience 2300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam27  "  ?id "  ne_ke_liye )" crlf))
)

;She is anxious to please.
;from_list(previous_verb,prayojana_to.dat) && following_category=verb	{tam:ne_ke_liye}	0
;All are requested to reach in time.
;Attempts have been made to understand what this picture signifies.
;It is used to flavour rice.
;That is the most I can do to help you
(defrule to_0_tam28
(declare (salience 2200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word 1 to_0)
(id-cat_coarse =(+ ?id 1) verb)
(id-word ?id1 is|am|are|was|were)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam28  "  ?id "  nA )" crlf))
)

(defrule to_0_tam29
(declare (salience 2100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam29  "  ?id "  ne_ke_liye )" crlf))
)

(defrule to_0_tam30
(declare (salience 2000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) as)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam30  "  ?id "  - )" crlf))
)

(defrule to_0_tam31
(declare (salience 1900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) read)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam31  "  ?id "  ke_liye )" crlf))
)

;The teacher reads to her students daily.
(defrule to_0_tam32
(declare (salience 1800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) cardinal)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam32  "  ?id "  waka )" crlf))
)

(defrule to_0_tam33
(declare (salience 1700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) follow)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam33  "  ?id "  waka )" crlf))
)

(defrule to_0_tam34
(declare (salience 1600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) walked)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam34  "  ?id "  kI_ora )" crlf))
)

(defrule to_0_tam35
(declare (salience 1500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) pointed)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam35  "  ?id "  kI_ora )" crlf))
)

(defrule to_0_tam36
(declare (salience 1400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) carry)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam36  "  ?id "  kI_ora )" crlf))
)

(defrule to_0_tam37
(declare (salience 1300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) run)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam37  "  ?id "  kI_ora )" crlf))
)

(defrule to_0_tam38
(declare (salience 1200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) cycle)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam38  "  ?id "  kI_ora )" crlf))
)

(defrule to_0_tam39
(declare (salience 1100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) agree)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam39  "  ?id "  se )" crlf))
)

(defrule to_0_tam40
(declare (salience 1000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) speak)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam40  "  ?id "  se )" crlf))
)

(defrule to_0_tam41
(declare (salience 900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) talk)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam41  "  ?id "  se )" crlf))
)

(defrule to_0_tam42
(declare (salience 800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) think)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam42  "  ?id "  se )" crlf))
)

(defrule to_0_tam43
(declare (salience 700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) whisper)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam43  "  ?id "  se )" crlf))
)

(defrule to_0_tam44
(declare (salience 600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) belong)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam44  "  ?id "  kA )" crlf))
)

(defrule to_0_tam45
(declare (salience 500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) rush)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam45  "  ?id "  ke_liye )" crlf))
)

(defrule to_0_tam46
(declare (salience 400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) make)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam46  "  ?id "  kA )" crlf))
)

(defrule to_0_tam47
(declare (salience 300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) expose)
(id-word =(+ ?id 1) air)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam47  "  ?id "  meM )" crlf))
)

(defrule to_0_tam48
(declare (salience 200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) expose)
(id-word =(+ ?id 1) water)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam48  "  ?id "  meM )" crlf))
)

(defrule to_0_tam49
(declare (salience 100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) expose)
(id-word =(+ ?id 1) public)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam49  "  ?id "  ke_sAmane )" crlf))
)

(defrule to_0_tam50
(declare (salience 0))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) expose)
(id-word =(+ ?id 1) sun)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam50  "  ?id "  ke_sAmane )" crlf))
)

(defrule to_0_tam51
(declare (salience -100))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) down )
(id-word =(- ?id 2) lead)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam51  "  ?id "  - )" crlf))
)

(defrule to_0_tam52
(declare (salience -200))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) fell )
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam52  "  ?id "  waka )" crlf))
)

(defrule to_0_tam53
(declare (salience -300))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) done )
(id-word =(+ ?id 1) hair)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam53  "  ?id "  ko )" crlf))
)

(defrule to_0_tam54
(declare (salience -400))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) threat )
(id-word =(+ ?id 1) peace|peacefulness|peace of mind|repose|serenity|tranquility|quietness|quietude|calmness|calm|peace treaty)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam54  "  ?id "  ke_liye )" crlf))
)

(defrule to_0_tam55
(declare (salience -500))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) moment )
(id-word =(+ ?id 1) soldiers|military|servicemen|military man|military personnel)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam55  "  ?id "  ke_liye )" crlf))
)

(defrule to_0_tam56
(declare (salience -600))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) cursor )
(id-word =(+ ?id 1) left|position|point|place)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam56  "  ?id "  ora )" crlf))
)

(defrule to_0_tam57
(declare (salience -700))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) pen )
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam57  "  ?id "  ko )" crlf))
)

(defrule to_0_tam58
(declare (salience -800))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) next )
(id-cat_coarse =(+ ?id 1) ~verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ke_karIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam58  "  ?id "  ke_karIba )" crlf))
)

(defrule to_0_tam59
(declare (salience -900))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam59  "  ?id "  ko )" crlf))
)

;"to","Prep","1.ko"
;Ram gave the book to Rama.
;--"2.waka"
;The house has a garden extending to the river bank.
;--"3.kI_ora"
;I went to the garden for jogging.
;--"4.kI"
;She is working as the secretary to the Executive Director.
;--"5.se"
;It takes 30 to 40 minutes to read this.
;--"6.ke_mukAbale_meM"
;The chances are 10 to 1.
;He is richer to her.
;--"7.meM"
;There are 100 paise to one rupee.
;--"8.se_milA_kara"
;He was standing with his ear to the door && listening to th conversation inside the room.
;--"9.ke_prawi"
;Dogs are devoted to their masters.
;Hari is committed to the job.
;--"10.ke_anusAra"
;According to her he will not come.
;The dress may be nice but it is not to her liking.
;
(defrule to_0_tam60
(declare (salience -1000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp  	to_0_tam60  "  ?id "  nA )" crlf))
)

(defrule to_0_tam61
(declare (salience -1000))
(id-TAM ?id to_0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id to_0 ne_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  to_0_tam.clp        to_0_tam61  "  ?id "  ne_ke_liye )" crlf))
)


