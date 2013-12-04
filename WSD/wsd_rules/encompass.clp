;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;Added by Pramila(Banasthali University)
;The land will come to encompass all or part of 15 U.S. states.
;भूमि 15 अमेरिकी राज्यों के सभी या  कुछ भाग को सम्मिलित करेगी.
;The festival is to encompass everything from music,theatre to literature,cinema and visual arts.
;त्योहार संगीत, थिएटर से साहित्य, सिनेमा और दृश्य कला के लिए सब कुछ  सम्मिलित करने के लिए है.
;The races in this stage encompass the biggest events.
;इस चरण में दौड़ सबसे बड़ी घटनाओं को सम्मिलित करती है.
(defrule encompass1
(declare (salience 4900))
(id-root ?id encompass)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-root ?id1 ?str);As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb )
(id-root ?id1 ?root&~hill&~it);The hills encompass it.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encompass.clp 	encompass1   "  ?id "  sammiliwa_kara )" crlf))
)

;------------------------------------- deafult ---------------------------------------
;He encompassed the enemies.
;उसने शत्रुओं को घेरा.
;His kingdom encompassed 890 square miles.
;उसका राज्य  ने 890 वर्ग मील की दूरी को घेर लिया.
;The hills encompass it.
;पहाड़ियाँ इसे घेरती है.
(defrule encompass2
(declare (salience 700))
(id-root ?id encompass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encompass.clp 	encompass2   "  ?id "  Gera )" crlf))
)

;Added by Shirisha Manju (28-08-13)
(defrule encompass3
(declare (salience 100))
(id-root ?id encompass)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encompass.clp        encompass3   "  ?id "  Gera )" crlf))
)
