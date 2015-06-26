.class final Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;
.super Lae/javax/xml/bind/SchemaOutputResolver;
.source "FoolProofResolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final resolver:Lae/javax/xml/bind/SchemaOutputResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->$assertionsDisabled:Z

    .line 60
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->logger:Ljava/util/logging/Logger;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/javax/xml/bind/SchemaOutputResolver;)V
    .locals 1
    .param p1, "resolver"    # Lae/javax/xml/bind/SchemaOutputResolver;

    .prologue
    .line 63
    invoke-direct {p0}, Lae/javax/xml/bind/SchemaOutputResolver;-><init>()V

    .line 64
    sget-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->resolver:Lae/javax/xml/bind/SchemaOutputResolver;

    .line 66
    return-void
.end method


# virtual methods
.method public createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;
    .locals 7
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "suggestedFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v2, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createOutput"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->resolver:Lae/javax/xml/bind/SchemaOutputResolver;

    invoke-virtual {v2, p1, p2}, Lae/javax/xml/bind/SchemaOutputResolver;->createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;

    move-result-object v0

    .line 71
    .local v0, "r":Ljavax/xml/transform/Result;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "sysId":Ljava/lang/String;
    sget-object v2, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 74
    if-eqz v1, :cond_1

    .line 85
    .end local v1    # "sysId":Ljava/lang/String;
    :cond_0
    sget-object v2, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createOutput"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-object v0

    .line 83
    .restart local v1    # "sysId":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "system ID cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
