.class public final enum Lcom/kms/call/CallBlockerActivity$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CALL:Lcom/kms/call/CallBlockerActivity$Action;

.field public static final enum OK:Lcom/kms/call/CallBlockerActivity$Action;

.field private static final synthetic a:[Lcom/kms/call/CallBlockerActivity$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/kms/call/CallBlockerActivity$Action;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v2}, Lcom/kms/call/CallBlockerActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/call/CallBlockerActivity$Action;->CALL:Lcom/kms/call/CallBlockerActivity$Action;

    .line 29
    new-instance v0, Lcom/kms/call/CallBlockerActivity$Action;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/kms/call/CallBlockerActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/call/CallBlockerActivity$Action;->OK:Lcom/kms/call/CallBlockerActivity$Action;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/call/CallBlockerActivity$Action;

    sget-object v1, Lcom/kms/call/CallBlockerActivity$Action;->CALL:Lcom/kms/call/CallBlockerActivity$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/call/CallBlockerActivity$Action;->OK:Lcom/kms/call/CallBlockerActivity$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/call/CallBlockerActivity$Action;->a:[Lcom/kms/call/CallBlockerActivity$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/call/CallBlockerActivity$Action;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/kms/call/CallBlockerActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/call/CallBlockerActivity$Action;

    return-object v0
.end method

.method public static values()[Lcom/kms/call/CallBlockerActivity$Action;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kms/call/CallBlockerActivity$Action;->a:[Lcom/kms/call/CallBlockerActivity$Action;

    invoke-virtual {v0}, [Lcom/kms/call/CallBlockerActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/call/CallBlockerActivity$Action;

    return-object v0
.end method
