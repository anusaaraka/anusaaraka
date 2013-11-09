
(defrule it0
(declare (salience 5000))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) give)
(id-word =(+ ?id 1) a )
(id-word =(+ ?id 2) try)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it0   "  ?id "  - )" crlf))
)

;He gave it a try
(defrule it1
(declare (salience 4900))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id1 blow|clear|drizzle|freeze|fog|gust|hail|howl|lightning|mizzle|mist|pelt|pour|precipitate|rain|roar|shower|sleet|snow|spit|spot|sprinkle|storm|swelter|teem|thaw|thunder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it1   "  ?id "  - )" crlf))
)

;karwA_vAlI_kriyA=snow	-	0
;karwA_vAlI_kriyA=rain	-	0
;karwA_vAlI_kriyA=take	-	0
(defrule it2
(declare (salience 2400)) ; Salience reduced from 4800 to 2400 by Roja 04-11-13. Ex: It was a completely wasted journey.
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word =(+ ?id 1) is )
(id-word =(+ ?id 2) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it2   "  ?id "  - )" crlf))
)

(defrule it3
(declare (salience 4700))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word =(+ ?id 1) is )
(id-word =(+ ?id 2) an)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it3   "  ?id "  - )" crlf))
)

;first_word && following_word=is && following_plus_two_word=the	-	0
;It is the third big city in China.
; It was a Sunday Evening.
(defrule it4
(declare (salience 2400)) ; Salience reduced from 4800 to 2400 by Roja 04-11-13. Ex: It was a completely wasted journey.
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word =(+ ?id 1) was )
(id-word =(+ ?id 2) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it4   "  ?id "  - )" crlf))
)

(defrule it5
(declare (salience 4500))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-word =(+ ?id 1) was )
(id-word =(+ ?id 2) an)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it5   "  ?id "  - )" crlf))
)

;first_word && following_word=was && following_plus_two_word=the	-	0
;It was the third big city in China.
;"first_word" is necessary, 
; because, in the following ex, 'it' refers to the day mentioned earlier.
;... because it was a Sunday Evening;
(defrule it6
(declare (salience 4400))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) is )
(id-cat_coarse =(+ ?id 2) adjective)
(id-word =(+ ?id 3) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it6   "  ?id "  yaha )" crlf))
)



;Modified the meaning from "-" to "yaha"
;It is hard.
;Salience reduced by Meena(12.9.9) as it is a very general rule compared to it25having specific relations  
(defrule it7
(declare (salience 2300))
;(declare (salience 4300))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) is )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
;(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it7   "  ?id "  yaha )" crlf))
)



(defrule it8
(declare (salience 4200))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) is )
(id-cat_coarse =(+ ?id 2) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it8   "  ?id "  - )" crlf))
)

(defrule it9
(declare (salience 4100))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) was )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it9   "  ?id "  - )" crlf))
)

(defrule it10
(declare (salience 4000))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) was )
(id-cat_coarse =(+ ?id 2) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it10   "  ?id "  - )" crlf))
)

(defrule it11
(declare (salience 3900))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) would )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it11   "  ?id "  - )" crlf))
)

(defrule it12
(declare (salience 3800))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) would )
(id-cat_coarse =(+ ?id 2) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it12   "  ?id "  - )" crlf))
)

(defrule it13
(declare (salience 3700))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) will )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it13   "  ?id "  - )" crlf))
)



;As it14 is a very general rule compared to it30,the salience reduced by Meena(14.10.09)
(defrule it14
;(declare (salience 3600))
(declare (salience 1000))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
(id-word =(+ ?id 2) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it14   "  ?id "  - )" crlf))
)

(defrule it15
(declare (salience 3500))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
(id-word =(+ ?id 2) for)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it15   "  ?id "  - )" crlf))
)

(defrule it16
(declare (salience 3400))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
(id-word =(+ ?id 2) wh)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it16   "  ?id "  - )" crlf))
)

(defrule it17
(declare (salience 3300))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 seem)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it17   "  ?id "  EsA )" crlf))
)

(defrule it18
(declare (salience 3200))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 appear)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it18   "  ?id "  EsA )" crlf))
)

(defrule it19
(declare (salience 3100))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 happen)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it19   "  ?id "  EsA )" crlf))
)

(defrule it20
(declare (salience 3000))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 chance)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it20   "  ?id "  EsA )" crlf))
)

(defrule it21
(declare (salience 2900))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 follow)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it21   "  ?id "  EsA )" crlf))
)

(defrule it22
(declare (salience 2800))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 make)
(kriyA-object ?id1 ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it22   "  ?id "  - )" crlf)))

(defrule it23
(declare (salience 2700))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 find)
(kriyA-object ?id1 ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it23   "  ?id "  - )" crlf)))

(defrule it24
(declare (salience 2600))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 was)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it24   "  ?id "  vaha )" crlf))
)

;How big a dog was it?


;Added by Meena(9.9.09)
;It is very difficult to go there.
;It is not easy to write a book.
;It is easy to write a book.
;It is impossible to reach on time for the function .
(defrule it25
(declare (salience 3330))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id It|it)
(kriyA-dummy_subject  ?id1 ?id)
(saMjFA-to_kqxanwa  ?id2 ?id3);renamed saMjFA-kqxanwa as saMjFA-to_kqxanwa by Manju (05-02-11)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it25   "  ?id "  - )" crlf))
)




;Added by Meena(12.5.10)
;It was in Paris that Debussy first heard Balinese music .
(defrule it026
(declare (salience 2600))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id It|it)
(kriyA-dummy_subject  ?id1 ?id)
(kriyA-in_saMbanXI ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it026   "  ?id "  vaha )" crlf))
)




;Added by Meena(12.9.09)
;It does not matter what Ted does . 
(defrule it26
(declare (salience 2500))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id It|it)
(kriyA-dummy_subject  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it26   "  ?id "  yaha )" crlf))
)






;Added by Meena(30.01.10)
;it as vaha
;There was a problem , but we solved it . 
(defrule it027
(declare (salience 2400))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(kriyA-subject ?id1 ?id2)
(id-root =(- ?id2 1) but)
(kriyA-conjunction  ?id1 =(- ?id2 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(assert (kriyA_id-object_viBakwi ?id1 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it027   "  ?id "  vaha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  it.clp      it027   "  ?id " ko )" crlf)
)
)
	




;Salience reduced by Meena(27.11.09)
(defrule it27
(declare (salience 0))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp 	it27   "  ?id "  yaha )" crlf))
)



;Added by Meena(9.9.09)
;Discuss it among yourselves first .
(defrule it28
(declare (salience 2500))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
(kriyA-object ?id1 ?id)
(id-cat_coarse =(+ ?id 1) preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(assert (kriyA_id-object_viBakwi ?id1 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp      it28  "  ?id "  yaha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  it.clp      it28  "  ?id "  ko )" crlf)
)
)


;Added by sheetal(19-09-09).
;I thought it is right to resign . 
(defrule it29
(declare (salience 4950))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 be)
(kriyA-subject ?id1 ?id)
(to-infinitive ?id2 ?id3)
(id-cat_coarse ?id3 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it29   "  ?id "  - )" crlf))
)

;"it","Pron","1.yaha/vaha"
;It is impossible to reach on time for the function.
;--"2.vAkyAMSa_pramuKawA_bawAnA"
;It's Jim who is the tall one.



;Added by Meena(13.10.09)
;It struggled to force its body through that little hole . 
(defrule it30
(declare (salience 4950))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject =(+ ?id 1) ?id)   
(id-root =(+ ?id 1) ?root&~be)
;(test (neq ?root be))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
;(assert (kriyA_id-subject_viBakwi ?id  ne)) ;commented by Roja(01-02-11) Here kriyA_id is written wrong.Even though if we correct it other sentences are getting disturbed. Without this also above sentence works well.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp        it30   "  ?id "   yaha )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  it.clp      it30  "  ?id "  ne )" crlf))
))


;Modified by sheetal(2-01-10).
(defrule it31
(declare (salience 4500))
(id-root ?id it)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) be )
(id-root ?id1 dark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  it.clp       it31   "  ?id "  - )" crlf))
)
;It was so dark that I could not see anything . 
