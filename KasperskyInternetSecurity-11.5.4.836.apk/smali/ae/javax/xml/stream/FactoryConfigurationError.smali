.class public Lae/javax/xml/stream/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 24
    iput-object p1, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 49
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 85
    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 80
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    iget-object v2, p0, Lae/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 85
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method
