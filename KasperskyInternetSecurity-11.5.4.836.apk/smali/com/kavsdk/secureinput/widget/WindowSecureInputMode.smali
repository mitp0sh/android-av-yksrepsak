.class public final enum Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

.field public static final enum AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

.field public static final enum Unchanged:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

.field private static final synthetic a:[Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    const-string v1, "Unchanged"

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->Unchanged:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 19
    new-instance v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    const-string v1, "AdjustResize"

    invoke-direct {v0, v1, v3}, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 26
    new-instance v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    const-string v1, "AdjustPan"

    invoke-direct {v0, v1, v4}, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->Unchanged:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustResize:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->AdjustPan:Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->a:[Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    return-object v0
.end method

.method public static values()[Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->a:[Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    invoke-virtual {v0}, [Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kavsdk/secureinput/widget/WindowSecureInputMode;

    return-object v0
.end method
