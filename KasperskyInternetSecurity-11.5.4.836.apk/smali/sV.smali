.class public final LsV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->b()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;

    move-result-object v0

    return-object v0
.end method
