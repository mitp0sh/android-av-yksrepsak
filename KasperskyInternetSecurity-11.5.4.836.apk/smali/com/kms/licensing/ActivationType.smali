.class public final enum Lcom/kms/licensing/ActivationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum InappPurchase:Lcom/kms/licensing/ActivationType;

.field public static final enum InputCodeByHand:Lcom/kms/licensing/ActivationType;

.field public static final enum KPC:Lcom/kms/licensing/ActivationType;

.field private static final synthetic a:[Lcom/kms/licensing/ActivationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/kms/licensing/ActivationType;

    const-string v1, "InputCodeByHand"

    invoke-direct {v0, v1, v2}, Lcom/kms/licensing/ActivationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/ActivationType;->InputCodeByHand:Lcom/kms/licensing/ActivationType;

    new-instance v0, Lcom/kms/licensing/ActivationType;

    const-string v1, "InappPurchase"

    invoke-direct {v0, v1, v3}, Lcom/kms/licensing/ActivationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/ActivationType;->InappPurchase:Lcom/kms/licensing/ActivationType;

    new-instance v0, Lcom/kms/licensing/ActivationType;

    const-string v1, "KPC"

    invoke-direct {v0, v1, v4}, Lcom/kms/licensing/ActivationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/licensing/ActivationType;->KPC:Lcom/kms/licensing/ActivationType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/licensing/ActivationType;

    sget-object v1, Lcom/kms/licensing/ActivationType;->InputCodeByHand:Lcom/kms/licensing/ActivationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/licensing/ActivationType;->InappPurchase:Lcom/kms/licensing/ActivationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/licensing/ActivationType;->KPC:Lcom/kms/licensing/ActivationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/licensing/ActivationType;->a:[Lcom/kms/licensing/ActivationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/licensing/ActivationType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/licensing/ActivationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/ActivationType;

    return-object v0
.end method

.method public static values()[Lcom/kms/licensing/ActivationType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/licensing/ActivationType;->a:[Lcom/kms/licensing/ActivationType;

    invoke-virtual {v0}, [Lcom/kms/licensing/ActivationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/licensing/ActivationType;

    return-object v0
.end method
