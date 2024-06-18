//
//  EligibilityAnswerSource.m
//  eligibilityd
//
//  Created by Kyle on 2024/6/18.
//  Audited for RELEASE_2024_BETA_1
//  Status: Complete

#import "EligibilityAnswerSource.h"
#import "EligibilityLog.h"

NSString *eligibility_answer_source_to_str(EligibilityAnswerSource answerSource) {
    switch (answerSource) {
        case EligibilityAnswerSourceInvalid: return @"OS_ELIGIBILITY_ANSWER_SOURCE_INVALID";
        case EligibilityAnswerSourceComputed: return @"OS_ELIGIBILITY_ANSWER_SOURCE_COMPUTED";
        case EligibilityAnswerSourceForced: return @"OS_ELIGIBILITY_ANSWER_SOURCE_FORCED";
        default:
            os_log_error(eligibility_log(), "%s: Unsupported answer source: %llu", "eligibility_answer_source_to_str", (unsigned long long)answerSource);
            return nil;
    }
}
