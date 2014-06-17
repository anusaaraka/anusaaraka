;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 
;He asked the shepherd to let him hold one of the lambs, and, clutching it in his arms, began to walk with the shepherd.[gyananidhi]
;उसने  भेड़ के एक बच्चे को पकड़ने के लिए शेफर्ड पूछा, और, अपनी बाहों में उसे पकड़कर शेफर्ड के साथ चलना शुरू किया.
(defrule arms1
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
;(id-root ?kri clutch|hold|put|carry|tie) ;this condition will be needed if any counter example is found 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzha))
(assert (id-wsd_root ?id arm))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arms.clp 	arms1   "  ?id "  bAzha )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;He was holding the baby in his arms.
(defrule arms2
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id1 ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzha))
(assert (id-wsd_root ?id arm))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arms.clp 	arms2   "  ?id "  bAzha )" crlf))
)


;****************DEFAULT RULES**************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 
(defrule arms0
(declare (salience 0))
(id-root ?id arms)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWiyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arms.clp 	arms0   "  ?id "  haWiyAra )" crlf))
)

