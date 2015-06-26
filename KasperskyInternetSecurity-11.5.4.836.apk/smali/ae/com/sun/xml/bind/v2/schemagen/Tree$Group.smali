.class final Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;
.super Lae/com/sun/xml/bind/v2/schemagen/Tree;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Group"
.end annotation


# instance fields
.field private final children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

.field private final kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;


# direct methods
.method private varargs constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;[Lae/com/sun/xml/bind/v2/schemagen/Tree;)V
    .locals 0
    .param p1, "kind"    # Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .param p2, "children"    # [Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .prologue
    .line 223
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree;-><init>()V

    .line 224
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    .line 225
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;[Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .param p2, "x1"    # [Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/schemagen/Tree$1;

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;-><init>(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;[Lae/com/sun/xml/bind/v2/schemagen/Tree;)V

    return-void
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;)Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    .prologue
    .line 219
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;)[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;

    .prologue
    .line 219
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    return-object v0
.end method


# virtual methods
.method canBeTopLevel()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method isNullable()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 235
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    sget-object v7, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    if-ne v6, v7, :cond_3

    .line 236
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 237
    .local v3, "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->isNullable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    .end local v3    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_0
    :goto_1
    return v4

    .line 236
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_2
    move v4, v5

    .line 240
    goto :goto_1

    .line 242
    .end local v0    # "arr$":[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .restart local v0    # "arr$":[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 243
    .restart local v3    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->isNullable()Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 244
    goto :goto_1

    .line 242
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 7
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 252
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->kind:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Particle;

    move-result-object v1

    .line 253
    .local v1, "c":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Particle;
    invoke-virtual {p0, v1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->writeOccurs(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;ZZ)V

    .line 255
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Group;->children:[Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/schemagen/Tree;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 256
    .local v2, "child":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-virtual {v2, v1, v6, v6}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "child":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_0
    return-void
.end method
