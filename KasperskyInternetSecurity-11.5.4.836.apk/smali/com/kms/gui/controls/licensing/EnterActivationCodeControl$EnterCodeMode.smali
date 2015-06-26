.class public final enum Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

.field public static final enum EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

.field private static final synthetic a:[Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    const-string v1, "EnterNewCode"

    invoke-direct {v0, v1, v2}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    new-instance v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    const-string v1, "EnterOldCode"

    invoke-direct {v0, v1, v3}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    sget-object v1, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->a:[Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    return-object v0
.end method

.method public static values()[Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->a:[Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    invoke-virtual {v0}, [Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    return-object v0
.end method
