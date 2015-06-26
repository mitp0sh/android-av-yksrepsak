.class public Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;
.super Ljava/lang/Object;
.source "DefaultValidationEventHandler.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocation(Lae/javax/xml/bind/ValidationEvent;)Ljava/lang/String;
    .locals 8
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 121
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v2, "msg":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getLocator()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v1

    .line 125
    .local v1, "locator":Lae/javax/xml/bind/ValidationEventLocator;
    if-eqz v1, :cond_4

    .line 127
    invoke-interface {v1}, Lae/javax/xml/bind/ValidationEventLocator;->getURL()Ljava/net/URL;

    move-result-object v5

    .line 128
    .local v5, "url":Ljava/net/URL;
    invoke-interface {v1}, Lae/javax/xml/bind/ValidationEventLocator;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 129
    .local v4, "obj":Ljava/lang/Object;
    invoke-interface {v1}, Lae/javax/xml/bind/ValidationEventLocator;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 130
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lae/javax/xml/bind/ValidationEventLocator;->getLineNumber()I

    move-result v0

    .line 132
    .local v0, "line":I
    if-nez v5, :cond_0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 133
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    if-eqz v5, :cond_1

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .end local v0    # "line":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 136
    .restart local v0    # "line":I
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_2
    if-eqz v4, :cond_3

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " obj: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 138
    :cond_3
    if-eqz v3, :cond_1

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 142
    .end local v0    # "line":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "url":Ljava/net/URL;
    :cond_4
    const-string v6, "DefaultValidationEventHandler.LocationUnavailable"

    invoke-static {v6}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 6
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 83
    .local v2, "severity":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "retVal":Z
    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 99
    sget-boolean v3, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "DefaultValidationEventHandler.UnrecognizedSeverity"

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 86
    :pswitch_0
    const-string v3, "DefaultValidationEventHandler.Warning"

    invoke-static {v3}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    const/4 v1, 0x1

    .line 104
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;->getLocation(Lae/javax/xml/bind/ValidationEvent;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "location":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DefaultValidationEventHandler.SeverityMessage"

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5, v0}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    return v1

    .line 90
    .end local v0    # "location":Ljava/lang/String;
    :pswitch_1
    const-string v3, "DefaultValidationEventHandler.Error"

    invoke-static {v3}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    const/4 v1, 0x0

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    const-string v3, "DefaultValidationEventHandler.FatalError"

    invoke-static {v3}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v1, 0x0

    .line 96
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
