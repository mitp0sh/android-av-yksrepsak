.class public abstract Lae/com/sun/xml/bind/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassLogger()Ljava/util/logging/Logger;
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 60
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "_":Ljava/lang/SecurityException;
    const-string v2, "ae.com.sun.xml.bind"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method
