.class final enum Lcom/kms/settings/SettingTabImpl$2;
.super Lcom/kms/settings/SettingTabImpl;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 16
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;IIILcom/kms/settings/SettingTabImpl$1;)V

    return-void
.end method


# virtual methods
.method public final getFragmentBuilder()Lwa;
    .locals 1

    .prologue
    .line 24
    new-instance v0, LvR;

    invoke-direct {v0}, LvR;-><init>()V

    return-object v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->c()Z

    move-result v0

    return v0
.end method
