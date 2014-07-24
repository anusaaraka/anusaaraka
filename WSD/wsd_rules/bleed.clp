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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 31-dec-2013
;My heart bleeds to see you in this condition.[oald]
;इस स्थिति में आपको देखकर मेरा हृदय  द्रवित है  
(defrule bleed1
(declare (salience 5000))
(id-root ?id bleed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub heart)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xraviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bleed.clp 	bleed1   "  ?id "  xraviwa )" crlf))
) 


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 31-dec-2013
;Keep the paint fairly dry so that the colours don't bleed into each other.[oald]
;रंगो को काफी सूखा रक्खो जिससे कि वह एक दूसरे में फैले नहीं
(defrule bleed2
(declare (salience 5000))
(id-root ?id bleed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-root ?sub colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bleed.clp 	bleed2   "  ?id "  PEla )" crlf))
) 


;*******************DEFAULT RULE****************************

(defrule bleed0
(declare (salience 0))
(id-root ?id bleed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUna_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bleed.clp 	bleed0   "  ?id "  KUna_baha )" crlf))
) 
