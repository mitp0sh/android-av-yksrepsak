.class public final Lth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltg;


# instance fields
.field private a:Lti;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lti;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lti;-><init>(B)V

    iput-object v0, p0, Lth;->a:Lti;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()LsW;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lth;->a:Lti;

    return-object v0
.end method

.method public final b()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->k()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    move-result-object v0

    return-object v0
.end method
