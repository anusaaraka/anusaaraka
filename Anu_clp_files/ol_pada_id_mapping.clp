 (defglobal ?*pada* = map_pada)

 (defrule end
 (declare (salience -1000))
 =>
        (close ?*pada*)
 )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

;------------------------------------------------------------------------------------------------------------------------- 
;The position we talked about is gone.
(defrule group_padas
(declare(salience 1000))
?f<-(pada_info (group_head_id ?gid) (group_ids ?gid)(preposition 0))
(ol_res_id-word_id-word   ?gid  ?w_ids  from|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth)
?f1<-(pada_info (group_head_id P10000) (group_cat PP) (group_ids P10000)(preposition 0))
=>
(retract ?f)
(modify ?f1 (preposition ?gid))
)
;-------------------------------------------------------------------------------------------------------------------------

(defrule map_pada_head_id
(declare(salience 1000))
?f<-(pada_info (group_head_id ?g_id))
(parserid-wordid   ?pid   ?wrd_id)
(test (eq ?pid ?g_id))
=>
(modify ?f (group_head_id ?wrd_id)))
;-------------------------------------------------------------------------------------------------------------------------
(defrule map_pada_prep_id
(declare(salience 900))
?f<-(pada_info (preposition ?prep_id ))
(parserid-wordid   ?pid   ?wrd_id)
(test (eq ?pid ?prep_id))
=>
(modify ?f (preposition ?wrd_id)))
;-------------------------------------------------------------------------------------------------------------------------
(defrule map_pada_grp_id
(declare(salience 800))
?f<-(pada_info (group_ids  $?str ?gid $?end))
(parserid-wordid   ?id   ?wrd_id)
(test (eq ?gid ?id))
=>
(modify ?f (group_ids  $?str ?wrd_id $?end)))
;-------------------------------------------------------------------------------------------------------------------------
;Ex. How much money did you earn?
(defrule map_pada_grp_samAsa_ids
(declare(salience 1190))
?f<-(pada_info (group_ids  $?str ?gid $?end))
(ol_res_id-word_id-word   ?gid      ?w_ids    $?)
(current_id-group_members   ?w_ids     $?ids)
=>
(assert (implode$ (create$ $?ids)))
(modify ?f (group_ids  $?str $?ids $?end)))
;-------------------------------------------------------------------------------------------------------------------------
(defrule map_agmt_id
(declare(salience 800))
?f<-(agmt_control_fact ?pid)
(parserid-wordid   ?pid   ?wrd_id)
=>
(retract ?f)
(assert (agmt_control_fact ?wrd_id)))
;-------------------------------------------------------------------------------------------------------------------------
(defrule map_pada_cntrl_id
(declare(salience 800))
?f<-(pada_control_fact ?pid)
(parserid-wordid   ?pid   ?wrd_id)
=>
(retract ?f)
(assert (pada_control_fact ?wrd_id)))
;-------------------------------------------------------------------------------------------------------------------------
(defrule write_padas
(declare(salience -100))
(pada_info (group_head_id ?head) (group_cat ?cat) (group_ids  $?ids) (vibakthi ?viB) (gender ?gen) (number ?num) (case ?c) (person ?per) (H_tam ?tam) (tam_source ?t_s) (preceeding_part_of_verb ?pos) (preposition ?prep) (Hin_position ?h_pos))
=>
;(bind ?ids (sort > $?ids))
(printout ?*pada* "(pada_info (group_head_id "?head") (group_cat "?cat") (group_ids  "(implode$ ?ids)") (vibakthi "?viB") (gender "?gen") (number "?num") (case "?c") (person "?per") (H_tam "?tam") (tam_source "?t_s") (preceeding_part_of_verb "?pos") (preposition "?prep") (Hin_position "?h_pos"))"crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
