package com.automation.sample.steps;

import com.automation.sample.pageobject.SamplePage;
import com.automation.sample.projectsetup.ProjectWebServices;

public class SampleSteps extends ProjectWebServices {

    SamplePage samplePage;

    public SampleSteps(SamplePage samplePage) {
        this.samplePage = samplePage;
    }

}