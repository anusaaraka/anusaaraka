 (deffunction never-called ()
 (assert (parserid-word))
 (assert (link_name-link_expansion))
 (assert (link_name-link_lnode-link_rnode))
 (assert (No complete linkages found))
 )

 ;------------------------------------------------------------------------------------------------
 ; Generates control fact for deciding number
 (defrule generate_control_fact
 (declare (salience 300))
 (parserid-word ?pid  ?)
 =>
        (assert (number_to_be_decided ?pid))
 )
 ;------------------------------------------------------------------------------------------------
 ; get number information from Ss link
 (defrule link_num_Ss
 (declare (salience 1100))
 (link_name-link_expansion   ?sub   S s $?vars)
 (link_name-link_lnode-link_rnode ?sub ?lnode ?rnode)
 (not (parser_id-number-src ?lnode ? ?))
 ?f0<-(number_to_be_decided ?lnode)
 =>
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  s Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ; get number information from Sp link
 (defrule link_num_Sp
 (declare (salience 1100))
 (link_name-link_expansion   ?sub   S p $?vars)
 (link_name-link_lnode-link_rnode ?sub ?lnode ?rnode)
 (not (parser_id-number-src ?lnode ? ?))
 ?f0<-(number_to_be_decided ?lnode)
 (parserid-word ?lnode ?word&:(not (numberp ?word)));Ex.And 21 could stand for the 21 cm radio frequency of hydrogen in space
 =>	
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  p  Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;Added by Meena(21.6.10)
 ;You owe us Rs 130 according to our records . 
 ;get number information from NM link
 (defrule link_num_NM
 (declare (salience 1100))
 (link_name-link_expansion   NM   N M $?vars)
 (link_name-link_lnode-link_rnode  NM  ?lnode  ?rnode)
 (not (parser_id-number-src ?lnode ? ?))
 ?f0<-(number_to_be_decided ?lnode)
 =>
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  p Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;get number information from SIs link
 (defrule link_num_SIs
 (declare (salience 1050))
 (link_name-link_expansion   ?sub   S I s $?vars)
 (link_name-link_lnode-link_rnode ?sub ?lnode ?rnode)
 (not (parser_id-number-src ?lnode ? ?))
 ?f0<-(number_to_be_decided ?lnode)
 =>
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  s Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;get number information from SIp link
 (defrule link_num_SIp
 (declare (salience 1050))
 (link_name-link_expansion   ?sub   S I p $?vars)
 (link_name-link_lnode-link_rnode ?sub ?lnode ?rnode)
 (not (parser_id-number-src ?lnode ? ?))
 ?f0<-(number_to_be_decided ?lnode)
 =>
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  p Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 (defrule default_rule
 ?f0<-(number_to_be_decided ?lnode)
 =>
	(retract ?f0)
        (assert (parser_id-number-src ?lnode  s Default))
 )
 ;------------------------------------------------------------------------------------------------


