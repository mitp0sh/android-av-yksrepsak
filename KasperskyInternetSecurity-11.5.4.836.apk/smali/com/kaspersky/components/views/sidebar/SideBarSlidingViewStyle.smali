.class public abstract enum Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Hover:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

.field public static final enum Push:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

.field public static final enum Shrink:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

.field private static final synthetic a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;

    const-string v1, "Hover"

    invoke-direct {v0, v1, v2, v2}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Hover:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    .line 18
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$2;

    const-string v1, "Push"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Push:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    .line 30
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$3;

    const-string v1, "Shrink"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Shrink:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Hover:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Push:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->Shrink:Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->mId:I

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getById(I)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->values()[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 51
    iget v4, v3, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->mId:I

    if-ne v4, p0, :cond_0

    .line 52
    return-object v3

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->a:[Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/sidebar/SideBarSlidingViewStyle;

    return-object v0
.end method


# virtual methods
.method public abstract layoutMainView(Landroid/view/View;IIILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;)V
.end method

.method public abstract transformMainViewCanvas(Landroid/graphics/Canvas;ILcom/kaspersky/components/views/sidebar/SideBarSlidingViewPosition;Lca;)V
.end method
