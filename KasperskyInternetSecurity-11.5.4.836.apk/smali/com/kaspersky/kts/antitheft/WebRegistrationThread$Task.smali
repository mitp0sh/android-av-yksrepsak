.class public final enum Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

.field public static final enum SIGN_IN:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

.field private static final synthetic a:[Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    const-string v1, "REGISTER_NEW"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    .line 214
    new-instance v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    const-string v1, "SIGN_IN"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->SIGN_IN:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    sget-object v1, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->REGISTER_NEW:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->SIGN_IN:Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->a:[Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->a:[Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/WebRegistrationThread$Task;

    return-object v0
.end method
