macro(CMakeGitCurrentCommitHash __hash)
    set(${PROJECT_NAME}_m_evacu ${m})
    set(m ${PROJECT_NAME}.CMakeGitCurrentCommitHash)
    
    list(APPEND ${m}_unsetter ${m}_res ${m}_err)
    execute_process(
        COMMAND git rev-parse HEAD
        RESULT_VARIABLE ${m}_res
        OUTPUT_VARIABLE ${__hash}
        ERROR_VARIABLE ${m}_err
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
    )
    if(NOT ${${m}_res} EQUAL 0)
        message(FATAL_ERROR "fail to fetch commit hash of current HEAD")
    endif()
    
    list(JOIN ${__hash} "" ${__hash})
    foreach(__v ${${m}_unsetter})
        unset(${__v})
    endforeach()
    unset(${m}_unsetter)
    set(m ${${PROJECT_NAME}_m_evacu})
endmacro()
