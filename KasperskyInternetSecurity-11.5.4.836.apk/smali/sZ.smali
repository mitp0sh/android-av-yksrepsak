.class public final LsZ;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/licensing/LicenseEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lay;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {p0, v0}, LsZ;->a(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, LsZ;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay;

    return-object v0
.end method
