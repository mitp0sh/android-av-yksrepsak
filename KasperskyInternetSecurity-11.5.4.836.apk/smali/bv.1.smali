.class final Lbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private synthetic a:Lbu;


# direct methods
.method constructor <init>(Lbu;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbv;->a:Lbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method
