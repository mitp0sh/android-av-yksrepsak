.class final enum Lcom/kms/KisShieldFragment$FragmentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ScanProgress:Lcom/kms/KisShieldFragment$FragmentMode;

.field public static final enum Static:Lcom/kms/KisShieldFragment$FragmentMode;

.field public static final enum UpdateProgress:Lcom/kms/KisShieldFragment$FragmentMode;

.field private static final synthetic a:[Lcom/kms/KisShieldFragment$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    new-instance v0, Lcom/kms/KisShieldFragment$FragmentMode;

    const-string v1, "Static"

    invoke-direct {v0, v1, v2}, Lcom/kms/KisShieldFragment$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 272
    new-instance v0, Lcom/kms/KisShieldFragment$FragmentMode;

    const-string v1, "ScanProgress"

    invoke-direct {v0, v1, v3}, Lcom/kms/KisShieldFragment$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->ScanProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 273
    new-instance v0, Lcom/kms/KisShieldFragment$FragmentMode;

    const-string v1, "UpdateProgress"

    invoke-direct {v0, v1, v4}, Lcom/kms/KisShieldFragment$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->UpdateProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 270
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/KisShieldFragment$FragmentMode;

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->ScanProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->UpdateProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->a:[Lcom/kms/KisShieldFragment$FragmentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/KisShieldFragment$FragmentMode;
    .locals 1

    .prologue
    .line 270
    const-class v0, Lcom/kms/KisShieldFragment$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/KisShieldFragment$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/kms/KisShieldFragment$FragmentMode;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->a:[Lcom/kms/KisShieldFragment$FragmentMode;

    invoke-virtual {v0}, [Lcom/kms/KisShieldFragment$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/KisShieldFragment$FragmentMode;

    return-object v0
.end method
