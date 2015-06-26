.class public final enum Lcom/kaspersky/emulator/client/Emulator$Trouble;
.super Ljava/lang/Enum;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaspersky/emulator/client/Emulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaspersky/emulator/client/Emulator$Trouble;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Crash:Lcom/kaspersky/emulator/client/Emulator$Trouble;

.field private static final synthetic ENUM$VALUES:[Lcom/kaspersky/emulator/client/Emulator$Trouble;

.field public static final enum Fail:Lcom/kaspersky/emulator/client/Emulator$Trouble;

.field public static final enum Timeout:Lcom/kaspersky/emulator/client/Emulator$Trouble;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;

    const-string v1, "Timeout"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/emulator/client/Emulator$Trouble;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Timeout:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    .line 28
    new-instance v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/emulator/client/Emulator$Trouble;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Fail:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    .line 29
    new-instance v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;

    const-string v1, "Crash"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/emulator/client/Emulator$Trouble;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Crash:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/emulator/client/Emulator$Trouble;

    sget-object v1, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Timeout:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Fail:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/emulator/client/Emulator$Trouble;->Crash:Lcom/kaspersky/emulator/client/Emulator$Trouble;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;->ENUM$VALUES:[Lcom/kaspersky/emulator/client/Emulator$Trouble;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/emulator/client/Emulator$Trouble;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/emulator/client/Emulator$Trouble;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kaspersky/emulator/client/Emulator$Trouble;->ENUM$VALUES:[Lcom/kaspersky/emulator/client/Emulator$Trouble;

    array-length v1, v0

    new-array v2, v1, [Lcom/kaspersky/emulator/client/Emulator$Trouble;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
