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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;No junior felt embarrassed in your court where good law was well administered.[gyananidhi]
;आपकी अदालत में, जहां सही कानून को अच्छी तरह लागू किया जाता था, कभी कोई कम अनुभव वाला वकील लज्जित नहीं हुआ।
(defrule administer1
(id-root ?id administer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-root ?sub law|rule)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgu_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  administer.clp 	administer1   "  ?id "  lAgu_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;The teacher has the authority to administer punishment.[oald]
;अध्यापक को दंड देने का हक है
(defrule administer2
(id-root ?id administer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  administer.clp 	administer2   "  ?id "  xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;The dose was administered to the child intravenously.[oald]
;बच्चे को खुराक नसों में दी गयी थी.
(defrule administer3
(id-root ?id administer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id2)
;(kriyA-subject ?id ?id1);uncomment these 2 lines if any conflict is found.
;(id-root ?id1 dose|poison|medicine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  administer.clp 	administer3   "  ?id "  xe )" crlf))
)

;***************************************** DEFAULT RULE **********************************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;To administer a charity.
;दानी संस्था का प्रबन्ध करना
(defrule administer0
(id-root ?id administer)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  administer.clp 	administer0   "  ?id "  prabanXa_kara )" crlf))
)

;**************************************************************** EXAMPLES ******************************************************************

;No junior felt embarrassed in your court where good law was well administered.
;To administer a charity.
;The high cost of administering medical services.
;The pension funds are administered by commercial banks.
;The questionnaire was administered by trained interviewers.
;The teacher has the authority to administer punishment.
;A taxi driver administered first aid to the victims.
;The priest was called to administer the last rites.
;Police believe his wife could not have administered the poison.
;The dose was administered to the child intravenously.
;He administered a severe blow to his opponent's head.
