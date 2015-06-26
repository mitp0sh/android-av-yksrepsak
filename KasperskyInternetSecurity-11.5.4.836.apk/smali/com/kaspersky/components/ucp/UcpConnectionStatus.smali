.class public final enum Lcom/kaspersky/components/ucp/UcpConnectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field public static final enum Connecting:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field public static final enum Registered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field public static final enum Registering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field public static final enum Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field public static final enum Unregistering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Unregistered"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 5
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Registering"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 6
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Registered"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 7
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connecting:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 8
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 9
    new-instance v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    const-string v1, "Unregistering"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ucp/UcpConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connecting:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->a:[Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/kaspersky/components/ucp/UcpConnectionStatus;
    .locals 1

    .prologue
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    .line 18
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Registered:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    goto :goto_0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connecting:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    goto :goto_0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Connected:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    goto :goto_0

    .line 18
    :pswitch_5
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->Unregistering:Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpConnectionStatus;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpConnectionStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpConnectionStatus;->a:[Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpConnectionStatus;

    return-object v0
.end method
