.class final enum Lcom/kms/settings/SettingTabImpl$4;
.super Lcom/kms/settings/SettingTabImpl;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 36
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
    .line 39
    new-instance v0, LvV;

    invoke-direct {v0}, LvV;-><init>()V

    return-object v0
.end method
